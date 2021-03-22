@extends('layout/main')
@section('judul','Detail Data Barang')
@section('badan')

@foreach($detailbarang as $nmbrg)

<ul class="list-group">
  <li class="list-group-item ;-flex justify-content-between align-items-center">
  {{$nmbrg->NMBRG}}
 
    <a href="/detailbarang/{{$nmbrg->id}}" class="badge bg-primary rounded-pill">Detail</a> 
  </li>
  
</ul>
@endforeach
@endsection