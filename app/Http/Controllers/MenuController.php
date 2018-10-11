<?php

namespace App\Http\Controllers;

use App\Http\Requests\MenuRequest;
use App\Http\Resources\MenuResource;
use App\Model\Restaurant;
use App\Model\Menu;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class MenuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Restaurant $restaurant)
    {
        return MenuResource::collection($restaurant->cheddar_mill_menus);
    }

    /**
     * Show the form for creating a new Menu resource.
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
    public function store(MenuRequest $request,Restaurant $restaurant)
    {
        $menus = new Menu($request->all());
        $restaurant->cheddar_mill_menus()->save($menus);
        return response([
            'data' => new MenuResource($menus)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Menu  $menus
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menus)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Menu  $menus
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menus)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Menu  $menus
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Restaurant $restaurant, Menu $menus)
    {
        $menus->update($request->all());
        return response([
            'data' => new MenuResource($menus)
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Menu  $menus
     * @return \Illuminate\Http\Response
     */
    public function destroy(Restaurant $restaurant,Menu $menus)
    {
        $menus->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }
}
