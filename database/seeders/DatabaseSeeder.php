<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Project;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // \App\Models\User::find(1)->delete();
        \App\Models\User::create([
            'name' => "admin",
            "email" => "admin@gmail.com",
            "email_verified_at" => now(),
            "password" => \Illuminate\Support\Facades\Hash::make('rahasia')
        ]);
        $data = [
            [
                'name' => 'Web App',
                'projects' => [
                    ['name' => 'Profile company web NOIU', 'image' => '/assets/webapp/noiu.png', 'url' => 'https://hexatechnoiu.my.id/'],
                    ['name' => 'E-voting', 'image' => '/assets/webapp/evoting.png', 'url' => 'https://sipentaskumis.smkn2sumedang.sch.id/'],
                    ['name' => 'Mevers', 'image' => '/assets/webapp/mevers.png', 'url' => 'https://difest23-mevers.netlify.app/'],
                    ['name' => 'Malvis Law Firm', 'image' => '/assets/webapp/malvis.png', 'url' => 'https://malvis.co.id/'],
                    ['name' => 'BINX', 'image' => '/assets/webapp/binx.png', 'url' => 'https://gilangjabbar657.wixsite.com/my-site/profil'],
                    ['name' => 'Hamparan permata', 'image' => '/assets/webapp/hamparanpermata.png', 'url' => 'https://hamparanpermatagroup.com/'],
                    ['name' => 'E-commerce SMKN 2 Sumedang', 'image' => '/assets/webapp/ecommerce.png', 'url' => 'https://pameran.hexatechnoiu.my.id/'],
                ],
            ],
            [
                'name' => 'Web design',
                'projects' => [
                    ['name' => 'Drinks sale web', 'image' => '/assets/product/aboba.png', 'url' => 'https://www.figma.com/proto/RVdNeZdvTQ6gKBU5OSdSqm/boba-mockup?type=design&node-id=1-2&t=PdFfecM4cmNPcOXQ-0&scaling=contain&page-id=0%3A1&starting-point-node-id=1%3A2'],
                    ['name' => 'GAUDIO', 'image' => '/assets/product/gaudio.png', 'url' => 'https://www.figma.com/proto/QvTx7hvCgR4YKo2hGNsaTK/GAUDIO?type=design&node-id=102-467&t=kx50UdkzaxWjd6CH-0&scaling=min-zoom&page-id=66%3A225'],
                    ['name' => 'Coffee shop', 'image' => '/assets/product/coffeeshop.png', 'url' => 'https://www.figma.com/file/YPEJmzzstrFbY4XdmvdIQD/coffe-shop?type=design&node-id=0-1&mode=design'],
                    ['name' => 'Metaverse web design', 'image' => '/assets/product/vrweb.png', 'url' => 'https://www.figma.com/proto/PM695HrWCIU9BaLplZdDyr/DW_SMKN2SUMEDANG_SitiNurFauziah?type=design&node-id=1-16&t=nZSqWv6N7IwOHbOw-0&scaling=min-zoom&page-id=1%3A16'],
                    ['name' => 'Grojunio', 'image' => '/assets/product/grojunio.png', 'url' => 'https://www.figma.com/proto/H1PAY2zMseOFKEfkf59uEb/ITDRI?node-id=197-575&scaling=scale-down&page-id=0%3A1&starting-point-node-id=197%3A544'],
                ],
            ],
            [
                'name' => 'Games',
                'projects' => [
                    ['name' => 'Tebak-tebakan huruf hijaiyah', 'image' => '/assets/games/hijaiyah.png', 'url' => 'https://indahfadhila.itch.io/matching-hijaiyah'],
                    ['name' => 'Tebak buah', 'image' => '/assets/games/buah.png', 'url' => 'https://rzkalee.itch.io/dora-fruit-the-explorer'],
                    ['name' => 'Memasangkan Kata', 'image' => '/assets/games/permainankata.jpeg', 'url' => 'https://shyfaafrilia04.itch.io/memasangkankata'],
                    ['name' => 'Bounce & Hook', 'image' => '/assets/games/bouncehook.jpeg', 'url' => 'https://maitsamaulida.itch.io/bounce-and-hook-jack'],
                    ['name' => 'Tebak Bendera', 'image' => '/assets/games/tebakbendera.png', 'url' => 'https://theflags.vercel.app/'],
                    ['name' => 'Block Ninja', 'image' => '/assets/games/blockninja.png', 'url' => 'https://block-ninja.vercel.app/'],
                    ['name' => 'Tic Tac Toe', 'image' => '/assets/games/tictactoe.png', 'url' => 'https://tussle-xo.vercel.app/'],
                    ['name' => 'Tetris', 'image' => '/assets/games/tetris.jpeg', 'url' => 'https://gd.games/instant-builds/6cdfdae3-7edb-4be1-af79-d97b8b26fcad'],
                    ['name' => 'Cat adventure', 'image' => '/assets/games/catadventure.jpeg', 'url' => 'https://gd.games/instant-builds/b25975a2-6654-4a49-9b8a-32f2312e828c'],
                ],
            ],
            [
                'name' => 'Metaverse',
                'projects' => [
                    ['name' => 'Mozilla Hub 1', 'image' => '/assets/product/mozhub1.png', 'url' => 'https://hubs.mozilla.com/SHMczMG/'],
                    ['name' => 'Mozilla Hub 2', 'image' => '/assets/product/mozhub2.png', 'url' => 'https://hubs.mozilla.com/QzrGeWt/'],
                    ['name' => 'Mozilla Hub 3', 'image' => '/assets/product/mozhub3.png', 'url' => 'https://app.lapentor.com/sphere/virtual-tour-smkn-2-sumedang'],
                    ['name' => 'Virtual Tour', 'image' => '/assets/product/lapentor.png', 'url' => 'https://skfb.ly/oA96D'],
                    ['name' => 'Mozilla Hub 4', 'image' => '/assets/product/mozhub4.png', 'url' => 'https://hubs.mozilla.com/wqLDmfk'],
                    ['name' => 'Gridas Booth 3D', 'image' => '/assets/product/gridasbooth.png', 'url' => 'https://skfb.ly/oA96D'],
                    ['name' => 'Tefa Booth 3D', 'image' => '/assets/product/tefabooth.png', 'url' => 'https://skfb.ly/oAWEG'],
                    ['name' => 'Gridas Expo 3D', 'image' => '/assets/product/gridasexpo.png', 'url' => 'https://skfb.ly/oAsUo'],
                ],
            ],
            [
                'name' => 'Animasi',
                'projects' => [
                    ['name' => 'Animasi Perkembangan Teknologi', 'image' => '/assets/overview/animation.png', 'url' => 'https://www.youtube.com/watch?v=rJXHf1BhXUg'],
                ],
            ],
            [
                'name' => 'Desain & Printing',
                'projects' => [
                    ['name' => 'Tumbler', 'image' => '/assets/product/tumbler.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Plain mug', 'image' => '/assets/product/plainmug.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Color mug', 'image' => '/assets/product/colormug.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Acrylic Keychain', 'image' => '/assets/product/ganci.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'One side keychain', 'image' => '/assets/product/onesidekeychain.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Pin', 'image' => '/assets/product/pin.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Canvas Totebag', 'image' => '/assets/product/canvastotebag.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                    ['name' => 'Short T-Shirt', 'image' => '/assets/product/tshirt.jpg', 'url' => 'https://pameran.hexatechnoiu.my.id/produk'],
                ],
            ],

        ];

        foreach ($data as $categoryData) {
            $category = Category::create([
                'name' => $categoryData['name'],
                'status' => true, // Assuming a default status
            ]);

            foreach ($categoryData['projects'] as $projectData) {
                Project::create([
                    'name' => $projectData['name'],
                    'status' => true, // Assuming a default status
                    'description' => '', // Assuming an empty description by default
                    'photo' => $projectData['image'], // Assuming an empty description by default
                    'link' => $projectData['url'],
                    'category_id' => $category->id,
                ]);
            }
        }
    }
}
