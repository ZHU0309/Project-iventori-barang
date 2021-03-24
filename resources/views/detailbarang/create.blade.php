@extends('layout/main')
@section('judul','Detail Data Barang')
@section('badan')
<h2>Form Tambah Data BArang <h2>
<form method="POST" action="/detailbarang">
@csrf
  <div class="form-group">
    <label for="KDBRG">Kode Barang</label>
    <input type="text" class="form-control" id="KDBRG" nama="KDBRG" placeholder="">
  </div>
  <div class="form-group">
    <label for="NMBRG">Nama Barang</label>
    <input type="text" class="form-control" id="NMBRG"  nama="NMBRG" placeholder="">
  </div>
  <div class="form-group">
  <div class="form-group">
    <label for="SATUAN">satuan</label>
    <input type="text" class="form-control" id="SATUAN"  nama="SATUAN" placeholder="">
  </div>
    <label for="JNSBRG">Jenis Barang</label>
    <input type="text" class="form-control" id="JNSBRG"  nama="STOK" placeholder="">
  </div>
  <div class="form-group">
    <label for="STOK">Stok</label>
    <input type="text" class="form-control" id="STOK" placeholder="">
  </div>
  <button type="submit" class="btn btn-primary">Tambah Data</button> 
</form> 