<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Belanja</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="col-4" style="float: right;">
            <div class="card">
                <div class="card-header bg-primary text-white">Daftar Harga</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item bg-light">TV : 4.200.000</li>
                    <li class="list-group-item bg-light">Kulkas : 3.100.000</li>
                    <li class="list-group-item bg-light">Mesin Cuci : 3.800.000</li>
               </ul>
           </div>
           <div class="card-footer bg-primary text-white">Harga Dapat Berubah Setiap Saat</div>
        </div>

        <div class="col-8">
            <div class="header">
                <header class="border-bottom">
                    <h3>Belanja Online</h3>
               </header>
            </div> 
            <div class="col-8 align-middle">
                <form method="POST" action="from-belanja.php">
                    <div class="form-group row text-end mt-3">
                        <label for="nama" class="col-4 col-form-label">Customer</label> 
                        <div class="col-8">
                            <input id="nama" name="nama" type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="produk" class="col-4 text-end">Pilih Produk</label> 
                        <div class="col-8">
                            <div class="custom-control custom-radio custom-control-inline">
                                <input name="produk" id="produk1" type="radio" class="custom-control-input" value="TV"> 
                                <label for="produk1" class="custom-control-label">TV</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input name="produk" id="produk2" type="radio" class="custom-control-input" value="Kulkas"> 
                                <label for="produk2" class="custom-control-label">Kulkas</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input name="produk" id="produk3" type="radio" class="custom-control-input" value="Mesin Cuci"> 
                                <label for="produk3" class="custom-control-label">Mesin Cuci</label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group row text-end mt-3">
                        <label for="jumlah" class="col-4 col-form-label">Jumlah</label> 
                        <div class="col-8">
                            <input id="jumlah" name="jumlah" type="number" class="form-control">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <div class="offset-4 col-8">
                            <button name="proses" type="submit" class="btn btn-success">Submit</button>
                        </div>
                    </div>
                </form> 
            </div>
        </div>
        <hr />
        
        <?php 
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Menangkap data yang diinputkan
            $nama_customer = $_POST['nama'];
            $produk = $_POST['produk'];
            $jumlah = $_POST['jumlah'];

            // Menentukan harga produk
            $harga_produk = 0;
            switch ($produk) {
                case "TV":
                    $harga_produk = 4200000;
                    break;
                case "Kulkas":
                    $harga_produk = 3100000;
                    break;
                case "Mesin Cuci":
                    $harga_produk = 3800000;
                    break;
            }

            // Menghitung total harga
            $total_harga = $harga_produk * $jumlah;

            // Mencetak hasil
            echo '<div class="alert alert-info">';
            echo 'Nama Customer: ' . $nama_customer . '<br>';
            echo 'Produk yang dipilih: ' . $produk . '<br>';
            echo 'Jumlah: ' . $jumlah . '<br>';
            echo 'Total Harga: Rp ' . number_format($total_harga, 0, ',', '.') . '<br>';
            echo '</div>';
        }
        ?>
    </div>
</body>
</html>