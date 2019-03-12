<?php

use Illuminate\Database\Seeder;
use Faker\Factory;
use App\Model\Product;
use App\Model\Category;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();
        foreach (range(1,20) as $i) {
            Product::create([
                'id' => $i,
                'product_name' => 'Product Name'.$i,
                'price' => mt_rand(100000,200000),
                'image' => $faker->imageUrl($width = 640, $height=480),
                'image_1' => $faker->imageUrl($width = 640, $height=480),
                'image_2' => $faker->imageUrl($width = 640, $height=480),
                'image_3' => $faker->imageUrl($width = 640, $height=480),
                'detail'=> $faker->paragraphs(rand(2,10),true),
                'category_id'=> mt_rand(1,5)
            ]);
         
        }
        // $faker = Factory::create();
        // foreach (range(1,5) as $i) {
        //     Category::create([
        //         'category_name' => 'Product Name'.$i,
        //         'category_image' => $faker->imageUrl($width = 640, $height=480)
        //     ]);
         
        // }
        
    }
}
