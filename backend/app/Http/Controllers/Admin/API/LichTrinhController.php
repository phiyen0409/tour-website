<?php

namespace App\Http\Controllers\Admin\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LichTrinhController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = VeDatTour::all();
        return response()->json($data, 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return LichTrinh::create([
            'ngaydi' => $request['ngaydi'],
            'ngayve' => $request['ngayve'],
            'gioxuatphat' => $request['gioxuatphat'],
            'songuoi' => $request['songuoi'],
            'chiphi' => $request['chiphi'],
            'huongdanvien' => $request['huongdanvien'],
            'matour' => $request['matour'],
            'tinhtrang' => $request['tinhtrang'],
        ]);
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
        $data = LichTrinh::find($id);
        $data->update($request->all());
        return ['message' => 'update the lichtrinh info'];
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
