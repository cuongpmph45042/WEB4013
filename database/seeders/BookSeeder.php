<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 0; $i < 100; $i++) {
            DB::table('books')->insert([
                'title' => fake()->text(40),
                'thumbnail' => fake()->imageUrl(),
                'author' => fake()->name(),
                'publisher' => fake()->company(),
                'publication' => fake()->date(),
                'price' => fake()->randomFloat(2, 10000, 300000),
                'quantity' => fake()->numberBetween(1, 500),
                'category_id' => rand(1, 5)
            ]);
        }
    }
}
