@extends('layout/main')
@section('judul','Detail per barang')
@section('badan')

<div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title">{{$detailbarang->NMBRG}}</h5>
    <h6 class="card-subtitle mb-2 text-muted">JUmlah STOK ={{$detailbarang->STOK}}</h6>
    <p class="card-text"></p>
<button type="submits" class="btn btn-primary">edit </button>
<button type="submits" class="btn btn-danger">hapus </button>
    <a href="/detailbarang" class="card-link">Kembali</a>
  </div>
</div>


@endsection 