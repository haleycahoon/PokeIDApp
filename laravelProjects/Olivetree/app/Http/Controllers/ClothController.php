<?php

namespace App\Http\Controllers;

use App\Models\Cloth;
use Illuminate\Http\Request;

class ClothController extends Controller
{
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //   __      _____  _ __ ___   ___ _ __  ___ 
    //   \ \ /\ / / _ \| '_ ` _ \ / _ \ '_ \/ __|
    //    \ V  V / (_) | | | | | |  __/ | | \__ \
    //     \_/\_/ \___/|_| |_| |_|\___|_| |_|___/
    //
    // WOMENS SHIRTS
    public function womensShirts()
    {
        $clothes = Cloth::where('category', 'Female-Shirt')->paginate(10);
        return view('womens.womensshirts', ['clothes' => $clothes]);
    }

    // WOMENS PANTS
    public function womensPants()
    {
        $clothes = Cloth::where('category', 'Female-Pants')->paginate(10);
        return view('womens.womenspants', ['clothes' => $clothes]);
    }

    // WOMENS ACCESSORIES
    public function womensAccessories()
    {
        $clothes = Cloth::where('category', 'Female-Accessories')->paginate(10);
        return view('womens.womensaccessories', ['clothes' => $clothes]);
    }

    public function womensBags() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Female-Bags')->paginate(10);
        return view('womens.womensbags', ['clothes' => $clothes]);
    }

    public function womensJewelry() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Female-Jewelry')->paginate(10);
        return view('womens.womensjewelry', ['clothes' => $clothes]);
    }

    public function womensHairAccessories() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Female-Hair-Accessories')->paginate(10);
        return view('womens.womenshairaccessories', ['clothes' => $clothes]);
    }

    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //    _ __ ___   ___ _ __  ___ 
    //   | '_ ` _ \ / _ \ '_ \/ __|
    //   | | | | | |  __/ | | \__ \
    //   |_| |_| |_|\___|_| |_|___/
    //
    // MENS SHIRTS
    public function mensShirts()
    {
        $clothes = Cloth::where('category', 'Men-Shirts')->paginate(10);
        return view('mens.mensshirts', ['clothes' => $clothes]);
    }

    // MENS PANTS
    public function mensPants()
    {
        $clothes = Cloth::where('category', 'Men-Pants')->paginate(10);
        return view('mens.menspants', ['clothes' => $clothes]);
    }

    // MENS ACCESSORIES
    public function mensAccessories()
    {
        $clothes = Cloth::where('category', 'Men-Accessories')->paginate(10);
        return view('mens.mensaccessories', ['clothes' => $clothes]);
    }

    // MENS BAGS
    public function mensBags() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Men-Bags')->paginate(10);
        return view('mens.mensbags', ['clothes' => $clothes]);
    }

    // MENS JEWELRY
    public function mensJewelry() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Men-Jewelry')->paginate(10);
        return view('mens.mensjewelry', ['clothes' => $clothes]);
    }

    // MENS TIES
    public function mensTies() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Men-Ties')->paginate(10);
        return view('mens.mensties', ['clothes' => $clothes]);
    }

    // MENS BE;TS
    public function mensBelts() // Corrected method name
    {
        $clothes = Cloth::where('category', 'Men-Belt')->paginate(10);
        return view('mens.mensbelts', ['clothes' => $clothes]);
    }
    
}