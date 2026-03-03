{{-- SPDX-License-Identifier: MIT --}}
<div class="text-center py-6">

    @if(!empty($branding['logo']))
        <img src="{{ $branding['logo'] }}" alt="School Logo" class="mx-auto mb-3" style="height:80px;">
    @endif

    <h2 class="text-2xl font-bold tracking-wide">
        {{ $branding['name'] }}
    </h2>

</div>
