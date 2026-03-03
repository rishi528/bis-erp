<?php

namespace App\Imports;

use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Collection;
use App\Models\Subscription;
use App\Models\StandardLink;
use App\Models\Qualification;
use App\Models\AcademicYear;
use App\Traits\RegisterUser;
use App\Models\Standard;
use App\Models\Section;
use App\Models\Country;
use App\Traits\Common;
use App\Models\State;
use App\Models\City;
use App\Models\User;
use Exception;

class UsersImport implements ToCollection, WithHeadingRow
{
    use RegisterUser, Common;

    public function collection(Collection $rows)
    {
        try {

            $insertedcount = 0;

            $school_id = Auth::user()->school_id;
            $academic_year = AcademicYear::where('school_id', $school_id)
                ->where('status', 1)
                ->first();

            foreach ($rows as $row) {

                // Skip empty rows
                if (!$row['firstname']) {
                    continue;
                }

                // Initialize objects (CRITICAL FIX)
                $student = new \Illuminate\Http\Request();
                $parent  = new \Illuminate\Http\Request();

                // Convert class
                if (is_numeric($row['class'])) {
                    $class_name = $row['class'];
                } else {
                    $class_name = strtoupper($row['class']);
                }

                // Fetch related models safely
                $country  = Country::where('name', 'LIKE', '%' . $row['country'] . '%')->first();
                $state    = State::where('name', 'LIKE', '%' . $row['state'] . '%')->first();
                $city     = City::where('name', 'LIKE', '%' . $row['city'] . '%')->first();
                $standard = Standard::where([
                    ['school_id', $school_id],
                    ['name', 'LIKE', $class_name]
                ])->first();
                $section  = Section::where([
                    ['school_id', $school_id],
                    ['name', 'LIKE', $row['section']]
                ])->first();

                if (!$standard || !$section) {
                    continue; // skip invalid class/section
                }

                $standardLink = StandardLink::where([
                    ['school_id', $school_id],
                    ['standard_id', $standard->id],
                    ['section_id', $section->id]
                ])->first();

                if (!$standardLink) {
                    continue; // skip if link missing
                }

                // Assign student data
                $student->firstname     = $row['firstname'];
                $student->lastname      = $row['lastname'];
                $student->mobile_no     = $row['mobile_no'];
                $student->email         = $row['email'] ? strtolower($row['email']) : null;
                $student->gender        = strtolower($row['gender']);
                $student->date_of_birth = date('Y-m-d', strtotime($row['date_of_birth']));
                $student->blood_group   = $row['blood_group'];
                $student->standard      = $standardLink->id;
                $student->address       = $row['address'];
                $student->city_id       = $city ? $city->id : null;
                $student->state_id      = $state ? $state->id : null;
                $student->country_id    = $country ? $country->id : null;
                $student->pincode       = $row['pincode'];
                $student->joining_date  = date('Y-m-d', strtotime($row['joining_date']));
                $student->registration_number = $row['admission_number'];
                $student->roll_number   = $row['roll_number'];
                $student->notes         = $row['notes'];

                // Parent handling
                $parent_status = User::where([
                    ['school_id', $school_id],
                    ['mobile_no', $row['parent_mobile_no']],
                    ['usergroup_id', 7]
                ])->first();

                if (!$parent_status) {
                    $parent->parent            = 'add';
                    $parent->firstname         = $row['parent_firstname'];
                    $parent->lastname          = $row['parent_lastname'];
                    $parent->mobile_no         = $row['parent_mobile_no'];
                    $parent->alternate_no      = $row['parent_alternate_no'];
                    $parent->email             = $row['parent_email'];
                    $parent->profession        = $row['parent_occupation'];
                    $parent->designation       = $row['parent_designation'];
                    $parent->relation          = $row['relation'];
                } else {
                    $parent->parent    = 'select';
                    $parent->select_id = $parent_status->id;
                }

                // Create user
                $avatar = '';
                $student = $this->CreateUser(
                    $student,
                    $school_id,
                    $academic_year->id,
                    $avatar,
                    6
                );

                $this->CreateParent(
                    $student->id,
                    $parent,
                    $school_id,
                    7
                );

                $insertedcount++;
            }

            \Session::put('insertedcount', $insertedcount);

        } catch (Exception $e) {
            dd($e->getMessage());
        }
    }
}