<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Setting::create([
            'id' => 1,
            'price' => 1.00,
            'square_is_production' => false,
            'square_live_applicant_id' => 'sq0idp-PrZIuyBHVbjcsmLT4YfprQ',
            'square_live_access_token' => 'EAAAlqgY129TbmZX_1PQXpH3mzpgXo6vSvIbqi_oylgJAk_USlnsT9JC03LIvly6',
            'square_live_location_id' => 'LFFFZZEN90E0J',

            'square_sandbox_applicant_id' => 'sandbox-sq0idb-tgMVfn6tcN7HCb1MMVNZxw',
            'square_sandbox_access_token' => 'EAAAl5WdbNGmRpEl3vPs53qA0OShMTbpc3WLpWebamMdIs6AnRJSOB6iDxZXKwFq',
            'square_sandbox_location_id' => 'LZNHKH643YWRH',
        ]);
    }
}
