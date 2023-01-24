<?php require_once 'header.php';
require_once 'sidebar.php';


?>

  <div class="content-wrapper">
   
    <section class="content">
      <div class="container-fluid">
        
       
        <div class="row">
           <div class ="col-md-12">
            <div class="card card-primary">

            <?php
                
                if (@$_GET['durum']=="okey"){ ?>
                  <p style="color:green;"> işlem başarılı</p>

              <?php  }  elseif (@$_GET['durum']=="no") { ?>
                
                <p style="color:red;"> işlem başarısız</p>
              <?php }  ?>

              <div class="card-header">
                <h3 class="card-title">Menü Ekleme</h3>
              </div>
              <!-- /.card-header -->

              <!-- form start -->
              <form action="islem.php" method="post" enctype="multipart/form-data">

                <div class="card-body row">

                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Menü Başlığı</label>
                    <input name="baslik"  type="text" class="form-control"  placeholder="Menüde Görünecek İsmi Yazınız" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Menüdeki Sırası</label>
                    <input name="sira"  type="number" class="form-control"  placeholder="1" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tıklandığında Gideceği Sayfa</label>
                    <input name="link"  type="text" class="form-control"  placeholder="https://localhost/blog/sayfa-ismi" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Menüde Görünme Durumu</label>
                      <select name="durum" class="custom-select">
                        <option value="1" selected>GÖSTER</option>
                        <option value="0">GİZLE</option>
                      </select>
                  </div>
                </div>

                  
                  
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button name="menu-ekle" style="float:right;"type="submit" class="btn btn-primary">Kaydet</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
     
          </div>
        </div>
        
      </div>
    </section>
    <!-- /.content -->
  </div>

 <?php  require_once 'footer.php'; ?>