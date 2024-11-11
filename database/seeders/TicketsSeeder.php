<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class TicketsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $total_files = 25;

        for ($i = 1; $i <= $total_files; $i++) {
            $filename = "numbers_{$i}.csv";
            $insert_data = array_map(function ($item) {
                return "INSERT INTO tickets (num_one, num_two, num_three, num_four, num_five, num_six, created_at, updated_at) VALUES ($item[0], $item[1], $item[2], $item[3], $item[4], $item[5], now(), now());\n";
            }, $this->get_array($filename));

            File::append(storage_path('app/tickets-' . $i . '.sql'), implode("", $insert_data));
        }
    }

    private function get_array(string $file_name): array
    {
        $file_path = storage_path("/app/private/files/$file_name");

        $file_content = file($file_path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

        return array_map(function ($line) {
            return array_map('intval', explode(',', $line));
        }, $file_content);
    }
}
