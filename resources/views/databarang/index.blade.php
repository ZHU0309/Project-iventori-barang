@extends('layout/main')
@section('judul','Pemograman')
@section('badan')


<h1 >Tambah Data Barang</h1>
<form method="POST" action="/databarang">
@csrf
  <div class="form-group">
    <label for="KDBRG">Kode Barang</label>
    <input type="text" class="form-control" id="KDBRG" placeholder="">
  </div>
  <div class="form-group">
    <label for="NMBRG">Nama Barang</label>
    <input type="text" class="form-control" id="NMBRG" placeholder="">
  </div>
  <div class="form-group">
  <div class="form-group">
    <label for="SATUAN">satuan</label>
    <input type="text" class="form-control" id="SATUAN" placeholder="">
  </div>
    <label for="JNSBRG">Jenis Barang</label>
    <input type="text" class="form-control" id="JNSBRG" placeholder="">
  </div>
  <div class="form-group">
    <label for="STOK">Stok</label>
    <input type="text" class="form-control" id="STOK" placeholder="">
  </div>
  <button type="submit" class="btn btn-primary">Tambah Data</button> 
</form> 

<!-- <div class="continer">

  <table class="table table-bordered">
  
  <thead class="table-dark ">
  <tr>
      <th scope="col">#</th>
      <th scope="col">KDBRG</th>
      <th scope="col">NMBRG</th>
      <th scope="col">SATUAN</th>
      <th scope="col">JNSBRG</th>
      <th scope="col">STOK</th>
    
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
</div> -->