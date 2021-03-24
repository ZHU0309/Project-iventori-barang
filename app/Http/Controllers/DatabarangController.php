<?php

namespace App\Http\Controllers;

use App\Baranng;
use Illuminate\Http\Request;

class DatabarangController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        {
            $baranng = \App\Baranng::all();

          return view('detailbarang.index',['detailbarang'=>$baranng]);
          }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
            {
         /*    $baranng = \App\Baranng::all(); */
            return view ('detailbarang.create');
             }
}


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

 //**
//$barang = new Baranng;
//$barang->KDBRG =$request->KDBRG;
//$barang->NMBRG =$request->NMBRG;
//$barang->JNSBRG =$request->JNSBRG;
//$barang->STOK =$request->STOK;
//$barang->save();

$request->validate([
'KDBRG' => 'required|size:7|unique:tbbarang',
'NMBRG' => 'required',
'SATUAN' => 'required',
'JNSBRG' => 'required',
'STOK' => 'required|numeric',
]);

//* returun redirect untuk mengembalikan halaman ke detailbarang   
//return redirect('/detailbarang');

  Baranng::create([
'KDBRG' => $request ->KDBRG,
'NMBRG' => $request ->NMBRG,
'SATUAN' => $request ->SATUAN,
'JNSBRG' => $request ->JNSBRG,
'STOK' => $request ->STOK,
]);
return redirect('/detailbarang')->with('status', 'Data Barang Berhasil Ditambahkan ');
  }
    /**
     * Display the specified resource.
     *
     * @param  \App\Baranng  $baranng
     * @return \Illuminate\Http\Response
     */
    /* show utnuk menmapilkan satu barang
    */
    public function show(Baranng $baranng)
    {
        
        return view('detailbarang.show',['detailbarang'=>$baranng]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Baranng  $baranng
     * @return \Illuminate\Http\Response
     */
    public function edit(Baranng $baranng)
    {
        {
         /*    $baranng = \App\Baranng::all(); */
        return view('detailbarang.update',['detailbarang'=>$baranng]);
     /* return view('detailbarang.update'); */
   
    }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Baranng  $baranng
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Baranng $baranng)
    {
       
        $request->validate([
           
            'NMBRG' => 'required',
            'SATUAN' => 'required',
            'JNSBRG' => 'required',
            'STOK' => 'required|numeric',
            ]);


            Baranng::where('id',$baranng->id)
                -> 
                update([
                   
                    'NMBRG' => $request ->NMBRG,
                    'SATUAN' => $request ->SATUAN,
                    'JNSBRG' => $request ->JNSBRG,
                    'STOK' => $request ->STOK
                    



                ]);

                return redirect('/detailbarang')->with('status', 'Data Barang Berhasil Diubah ');  

            



                
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Baranng  $baranng
     * @return \Illuminate\Http\Response
     */
    public function destroy(Baranng $baranng)
    {
        Baranng::destroy($baranng->id);
        return redirect('/detailbarang')->with('status', 'Data Barang Berhasil Dihapus ');
    }





}