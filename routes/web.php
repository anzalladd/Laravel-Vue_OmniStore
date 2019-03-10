<?php

Route::get('/', function () {
    return view('welcome');
});

Route::get('/{any}', function () {
    return view('welcome');
});

Route::get('/{detail}/{id}',function(){
    return view('welcome');
});

Route::get('/{detail}/{id}/{category_id}',function(){
    return view('welcome');
});