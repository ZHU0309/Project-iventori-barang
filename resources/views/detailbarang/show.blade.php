@extends('layout/main')
@section('judul','Detail per barang')
@section('badan')
<center>
<div class="container">
<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">{{$detailbarang->NMBRG}}</h5>
    <h6 class="card-subtitle mb-2 text-muted">JUmlah STOK ={{$detailbarang->STOK}}</h6>
    <p class="card-text"></p>
   
  <form action="/detailbarang/{{$detailbarang->id}}" method="post">
    @method('delete')
    @csrf
<button type="submits" class="btn btn-primary">hapus </button>
</form>

<a href="{{$detailbarang->id}}/edit" class="btn btn-danger">edit</a>
    <a href="/detailbarang" class="btn btn-light">Kembali</a>
  </div>
</div>
<div>
</center>
@endsection 