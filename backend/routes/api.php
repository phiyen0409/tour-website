<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResources([
    'nhanvien' => 'Admin\API\NhanVienController',

    'khachhang' => 'Admin\API\KhachHangController',

    'diadiem' => 'Admin\API\DiaDiemController',

    'tour' => 'Admin\API\TourController',

    'anhtour' => 'Admin\API\AnhTourController',

    'binhluan' => 'Admin\API\BinhLuanController',

    'tintuc' => 'Admin\API\TinTucController',

    'chitiettour' => 'Admin\API\ChiTietTourController',

    'dattour' => 'Admin\API\DatTourController',

    'lichtrinh' => 'Admin\API\LichTrinhController',
]);