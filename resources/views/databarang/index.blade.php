@extends('layout/main')
@section('judul','Pemograman')
@section('badan')
  <table class="table table-bordered">
  
  <thead class="table-dark">
  <tr>
      <th scope="col">#</th>
      <th scope="col">KDBRG</th>
      <th scope="col">NMBRG</th>
      <th scope="col">SATUAN</th>
      <th scope="col">JNSBRG</th>
      <th scope="col">STOK</th>
      <th scope="col">AKSi</th>
    </tr>
  </thead>
  <tbody>
  @foreach($databarang as $brg)
  <tr>
      <th scope="row">{{ $loop->iteration }}</th>
      <td >{{$brg->KDBRG}}</td>
      <td>{{$brg->NMBRG}}</td>
      <td>{{$brg->SATUAN}}</td>
      <td>{{$brg->JNSBRG}}</td>
      <td>{{$brg->STOK}}</td>
    
    </tr>
    @endforeach
    @endsection
  </tbody>


</table>
