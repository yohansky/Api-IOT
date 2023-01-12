<?php

namespace App\Http\Controllers;
use App\Models\PenggunaModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use SimpleSoftwareIO\QrCode\Generator;
use Illuminate\Support\HtmlString;
class PenggunaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function postLogin(Request $req){
        
        $data = $req->all();

        $user = PenggunaModel::where('email',$req['email'])->limit(1)->get();
        if(count($user)>0){
            if(Hash::check($data['password'],$user[0]->password)){
                $userInfo = $user[0];         
                return ResponseFormatter::responseAPI("OK","Berhasil",$userInfo);
            }
        };

        return ResponseFormatter::responseAPI("BAD","GAGAL",null);

    }
    
    public function store(Request $request)
    {
        //
        $qrcode = new Generator;
        $data = $request->except('password');
        $data['deskripsi'] = "Halo, Salam Kenal";
        $data['password'] = Hash::make($request->password,['rounds' => 8]);
        $data['token'] = Hash::make($data['email'],['rounds' => 8]);
        $qrfile = "QR-".mt_rand(0000,9999).'.jpg';
        $qrpath = url('/storage/assets/QR/');
        $data['QR'] = $qrpath."/".$qrfile;
        (string)$qrcode->format('png')->gradient(0, 0, 0, 95, 39, 205, "diagonal")->size(500)->generate($data['email'],"storage/assets/QR/".$qrfile);
        $baru = PenggunaModel::create($data);

        return ResponseFormatter::responseAPI("OK","Berhasil",$baru);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $data = PenggunaModel::where('email', $id)->limit(1)->get();
        return response()->json($data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        PenggunaModel::find($id)->update($request->all());
        return "Berhasil";

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
