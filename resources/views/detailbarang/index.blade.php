@extends('layout/main')
@section('judul','Detail Data Barang')
@section('badan')


			<div class="continer">
			@if (session('status'))
   		 <div class="alert alert-success">
        {{ session('status') }}
   			 </div>
			@endif


<div class="container">
<h2>Tambah Data Barang </h2>
<a href="/detailbarang/create" class="btn btn-primary">Tambah Data</a>
<br>
<br>

@foreach($detailbarang as $nmbrg)
<div class="container">
<ul class="list-group">
 		<li class="list-group-item ;-flex justify-content-between align-items-center">
  		 <h3>Nama Barang {{$nmbrg->NMBRG}}, Satuan {{$nmbrg->SATUAN}}, Sisa Stok, {{$nmbrg->STOK}}  </h3>
		   <br>
		
   		 <a href="/detailbarang/{{$nmbrg->id}}" class="btn btn-primary">Detail</a>
  	</li>
	 <!--  {{$nmbrg->id}} kodinguntuk mengambil idbarang --> 
</ul>
</div>
</div>
@endforeach
@endsection