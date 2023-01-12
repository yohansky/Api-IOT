<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenggunaModel extends Model
{
    use HasFactory;

    protected $table = "pengguna";
    protected $fillable = ['nama','deskripsi','tempat_lahir','tanggal_lahir', 'alamat','no_telp','email','password','QR','token'];
    protected $hidden = ["password"];

}
