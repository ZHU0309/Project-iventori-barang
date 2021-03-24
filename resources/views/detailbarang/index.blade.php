@extends('layout/main')
@section('judul','Detail Data Barang')
@section('badan')
<h2>Tambah Data Barang </h2>
<div class="continer">
<a href="/detailbarang/create" class="btn btn-primary">Tambah Data</a>
<br>
<br>
@foreach($detailbarang as $nmbrg)
<div class="container">
<ul class="list-group">
 		<li class="list-group-item ;-flex justify-content-between align-items-center">
  		{{$nmbrg->NMBRG}}
 
   		 <a href="/detailbarang/{{$nmbrg->id}}" class="badge bg-primary rounded-pill">Detail</a>
  	</li>
  
</ul>
</div>
@endforeach
@endsection