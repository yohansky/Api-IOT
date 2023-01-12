<?php

use Illuminate\Support\Facades\Route;
use App\Models\PenggunaModel;
use Illuminate\Support\Facades\Hash;
use SimpleSoftwareIO\QrCode\Generator;
use Illuminate\Support\HtmlString;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    // $data = $request->except('password');
    $qrcode = new Generator;
    $data = [
        'nama' => "Muhammad Ilham Kusumawardhana",
        'deskripsi' => 'Full-Stack Developer at Gojek',
        'tempat_lahir' => "Bandung",
        'tanggal_lahir' => "2000-07-09",
        'no_telp' => '087876897004',
        'alamat' => "Perumahan Bumi Anggrek", 
        'email' => "Kawekaweha123@gmail.com", 
        'password' => "Bandung00",
    ];
    $data['password'] = Hash::make($data['password'],['rounds' => 8]);
    $data['token'] = Hash::make($data['email'],['rounds' => 8]);
    $qrfile = "QR-".mt_rand(0000,9999).'.jpg';
    $qrpath = url('/storage/assets/QR/');
    $data['QR'] = $qrpath."/".$qrfile;
    (string)$qrcode->format('png')->gradient(0, 0, 0, 95, 39, 205, "diagonal")->size(500)->generate($data['email'],"storage/assets/QR/".$qrfile);
    $baru = PenggunaModel::create($data);

    // (string)$qrcode->format('png')->size(500)->generate("Tugas Besar IOT",'storage/assets/QR/QR-'.mt_rand(0000,9999).'.jpg');

    return "Coba liat di storage";

    // return $qrcode->gradient(0, 0, 0, 95, 39, 205, "diagonal")->size(500)->generate("Kawe");
});
