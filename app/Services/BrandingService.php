<?php

namespace App\Services;

use App\Models\School;

class BrandingService
{
    public static function get()
    {
        $school = School::first();

        return [
            'name' => $school->name ?? config('app.name'),
            'logo' => $school && $school->logo
                        ? asset('storage/'.$school->logo)
                        : null,
        ];
    }
}