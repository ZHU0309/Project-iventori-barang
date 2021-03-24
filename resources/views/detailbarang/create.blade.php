
@section('judul','Tambah Data barang')
@section('badan')
<h2>Tambah Data Barang </h2>

<form method="post" action="/detailbarang">

	@csrf
	
  <div class="form-group">
    <label for="KDBRG">Kode barang</label>
    <input type="text" class="form-control" id="KDBRG" name="KDBRG" placeholder="kod Barang">
  </div>
   <div class="form-group">
    <label for="NMBRG">Nama Barang</label>
    <input type="text" class="form-control" id="NMBRG" name="NMBRG" placeholder="Nama barang">
  </div>
    <div class="form-group">
    <label for="SATUAN">Satuan</label>
    <input type="text" class="form-control" id="SATUAN" name="SATUAN" placeholder="satuan">
  </div>
    <div class="form-group">
    <label for="JNSBRG">jenis barang</label>
    <input type="text" class="form-control" id="JNSBRG" name="JNSBRG" placeholder="jenis barang">
  </div>

  <div class="form-group">
    <label for="STOK">Stok</label>
    <input type="text" class="form-control" id="STOK" name="STOK" placeholder="Stok Barang">
  </div>
<br>
    <button type="submit" class="btn btn-primary">Tambah</button>

</form>

@endsection  

