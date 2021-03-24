@extends('layout/main')
@section('judul','Tambah Data barang')
@section('badan')
<center>
<div class="container">
  <h2>Tambah Data Barang </h2>	

<form method="post" action="/detailbarang">

	@csrf
	<div class="form-group">
    <label for="KDBRG">Kode barang</label>
    <input type="text"   class="form-control @error('KDBRG') is-invalid @enderror" id="KDBRG" name="KDBRG" placeholder="kode Barang" value="{{old('KDBRG')}}">
  @error('KDBRG')
  <div class="invalid-feedback">{{$message}}</div>@enderror
</div>


   <div class="form-group">
    <label for="NMBRG">Nama Barang</label>
    <input type="text" class="form-control @error('NMBRG') is-invalid @enderror" id="NMBRG" name="NMBRG" placeholder="Nama barang " value="{{old('NMBRG')}}">
  </div>
  @error('NMBRG')
<div class="invalid-feedback">{{$message}}</div>@enderror
   
    <div class="form-group">
    <label for="SATUAN">Satuan</label>
    <input type="text" class="form-control @error('SATUAN') is-invalid @enderror" id="SATUAN" name="SATUAN" placeholder="satuan" value="{{old('SATUAN')}}">
    @error('SATUAN')
<div class="invalid-feedback">{{$message}}</div>@enderror
  
  
  </div>
    <div class="form-group">
    <label for="JNSBRG">jenis barang</label>
    <input type="text" class="form-control @error('SATUAN') is-invalid @enderror" id="JNSBRG" name="JNSBRG" placeholder="jenis barang" value="{{old('JNSBRG')}}">
    @error('JNSBRG')
<div class="invalid-feedback">{{$message}}</div>@enderror
  </div>


  <div class="form-group">
    <label for="STOK">Stok</label>
    <input type="text" class="form-control  @error('STOK') is-invalid @enderror" id="STOK" name="STOK" placeholder="Stok Barang" value="{{old('STOK')}}">
    @error('STOK')
<div class="invalid-feedback">{{$message}}</diiv>@enderror
  
  
  </div>
</div>
<br>
<div class="container">
    <button type="submit" class="btn btn-primary">Tambah</button>
</div>
</form>



</div>
</div>
</div>
</center>
@endsection  