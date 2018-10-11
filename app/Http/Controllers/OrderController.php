<?php

namespace App\Http\Controllers;

use App\Http\Requests\OrderRequest;
use App\Http\Resources\OrderResource;
use App\Model\Restaurant;
use App\Model\Order;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Restaurant $restaurant)
    {
        return OrderResource::collection($restaurant->cheddar_mill_orders);
    }

    /**
     * Show the form for creating a new Order resource.
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
    public function store(OrderRequest $request, Restaurant $restaurant)
    {
        $orders = new Order($request->all());
        $restaurant->cheddar_mill_orders()->save($orders);
        return response([
            'data' => new OrderResource($orders)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Order  $orders
     * @return \Illuminate\Http\Response
     */
    public function show(Order $orders)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Order  $orders
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $orders)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Order  $orders
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Restaurant $restaurant, Order $orders)
    {
        $orders->update($request->all());
        return response([
            'data' => new OrderResource($orders)
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Order  $orders
     * @return \Illuminate\Http\Response
     */
    public function destroy(Restaurant $restaurant,Order $orders)
    {
        $orders->delete();
        return response(null,Response::HTTP_NO_CONTENT);
    }
}
