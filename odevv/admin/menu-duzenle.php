<?php require_once 'header.php';
require_once 'sidebar.php';

if(isset($_GET['id']))
{

    $verisor=$baglanti->prepare("SELECT * FROM menu_listesi where id=?");
    $verisor->execute(array($_GET['id']));
    $vericek=$verisor->fetch(PDO::FETCH_ASSOC);
    
}
else
{
    header("Location:menu-liste.php");
}



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
                <h3 class="card-title">Menü Düzenleme</h3>
              </div>
              <!-- /.card-header -->

              <!-- form start -->
              <form action="islem.php" method="post" enctype="multipart/form-data">

                <div class="card-body row">

                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Menü Başlığı</label>
                    <input name="baslik"  type="text" class="form-control" value="<?=$vericek['baslik']?>"  placeholder="Menüde Görünecek İsmi Yazınız" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Menüdeki Sırası</label>
                    <input name="sira"  type="number" class="form-control" value="<?=$vericek['sira']?>"  placeholder="1" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tıklandığında Gideceği Sayfa</label>
                    <input name="link"  type="text" class="form-control" value="<?=$vericek['link']?>"  placeholder="https://localhost/blog/sayfa-ismi" require>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="form-group">
                    <label>Menüde Görünme Durumu</label>
                      <select name="durum" class="custom-select">

                        <?php

                            if ($vericek['durum']==1) {
                                ?>
                        <option value="1" selected>GÖSTER</option>
                        <option value="0">GİZLE</option>
                                <?php
                            } else {
                                ?>
                                <option value="1" >GÖSTER</option>
                                <option value="0" selected>GİZLE</option>
                                
                                <?php
                            }


                        ?>


                        
                      </select>
                  </div>
                </div>

                  
                  
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <input type="hidden" name="id" value="<?=$vericek['id']?>">
                  <button name="menu-guncelle" style="float:right;"type="submit" class="btn btn-primary">Güncelle</button>
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