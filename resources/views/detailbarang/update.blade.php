@extends('layout/main')
@section('judul','Update Data barang')
@section('badan')
<h2>Update Data Barang </h2>

<form method="post" action="/detailbarang/{{$detailbarang->id}}">
@method('patch')
	@csrf
	<div class="form-group">
    <label for="KDBRG">Kode Barang {{$detailbarang->KDBRG}}</label>
    </div>
<div class="form-group">
    <label for="NMBRG">Nama Barang</label>
    <input type="text" class="form-control @error('NMBRG') is-invalid @enderror" id="NMBRG" name="NMBRG" placeholder="Nama barang " value="{{$detailbarang->NMBRG}}">
  </div>
  @error('NMBRG')
<div class="invalid-feedback">{{$message}}</div>@enderror
   
    <div class="form-group">
    <label for="SATUAN">Satuan</label>
    <input type="text" class="form-control @error('SATUAN') is-invalid @enderror" id="SATUAN" name="SATUAN" placeholder="satuan" value="{{$detailbarang->SATUAN}}">
    @error('SATUAN')
<div class="invalid-feedback">{{$message}}</div>@enderror
  
  
  </div>
    <div class="form-group">
    <label for="JNSBRG">jenis barang</label>
    <input type="text" class="form-control @error('SATUAN') is-invalid @enderror" id="JNSBRG" name="JNSBRG" placeholder="jenis barang" value="{{$detailbarang->JNSBRG}}">
    @error('JNSBRG')
<div class="invalid-feedback">{{$message}}</div>@enderror
  </div>


  <div class="form-group">
    <label for="STOK">Stok</label>
    <input type="text" class="form-control  @error('STOK') is-invalid @enderror" id="STOK" name="STOK" placeholder="Stok Barang" value="{{$detailbarang->STOK}}">
    @error('STOK')
<div class="invalid-feedback">{{$message}}</diiv>@enderror
  
  
  </div>
</div>
<br>
<div class="container">
    <button type="submit" class="btn btn-primary">Ubah</button>
</div>
</form>

@endsection  

