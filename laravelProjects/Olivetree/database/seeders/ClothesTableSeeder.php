<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClothesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('clothes')->insert([
            'name' => 'Made in England Leather Chino Belt',
            'description' => 'Chocolate Brown',
            'image' => '1.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Leather Formal Belt',
            'description' => ' Black',
            'image' => '2.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Leather Formal Belt',
            'description' => 'Chocolate',
            'image' => '3.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Formal Leather Belt',
            'description' => 'Dark Tan',
            'image' => '4.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made In England Leather Chino Belt',
            'description' => 'Tan',
            'image' => '5.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made in England Leather Reversible Belt',
            'description' => 'Black & Brown',
            'image' => '6.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made in England Textured Leather Chino Belt',
            'description' => 'Black',
            'image' => '7.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made in England Suede Belt',
            'description' => 'Chocolate',
            'image' => '8.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made in England Leather Formal Belt',
            'description' => 'Black',
            'image' => '9.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made in England Leather Formal Belt',
            'description' => 'Tan',
            'image' => '10.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made In England Leather Reversible Chino Belt',
            'description' => 'Dark Tan',
            'image' => '11.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Casual Stretch Belt',
            'description' => 'Navy',
            'image' => '12.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
        DB::table('clothes')->insert([
            'name' => 'Made In England Suede Belt',
            'description' => 'Dark Navy',
            'image' => '13.jpg',
            'gender' => 'Male',
            'category' => 'Men-Belt',
            'itemname'=> 'Belt',
            'price' => '45.99',
        ]);
    }
}