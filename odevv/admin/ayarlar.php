<?php require_once 'header.php';
require_once 'sidebar.php';

$ayarsor=$baglanti->prepare("SELECT * FROM ayarlar where ayar_id=?");
$ayarsor->execute(array(1));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);

?>

  <?php if(@$_GET['sayfa']=="ayarlar")  { ?>

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
                <h3 class="card-title">Ayarlar</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="islem.php" method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Site Başlığı</label>
                    <input name="baslik" value="<?php echo $ayarcek['ayar_baslik']?>"type="text" class="form-control"  placeholder="lütfen sitenizin başlığını giriniz.">
                  </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Site Açıklama</label>
                    <input name="aciklama" value="<?php echo $ayarcek['ayar_aciklama']?>" type="text" class="form-control"  placeholder="lütfen sitenizin açıklamasını giriniz.">
                  </div>
                  
                   <div class="form-group">
                    <label for="exampleInputEmail1">Site Anahtar kelime</label>
                    <input name="anahtar" value="<?php echo $ayarcek['ayar_anahtar'] ?>"type="text" class="form-control"  placeholder="lütfen sitenizin anahtar kelimesini giriniz.">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">adres</label>
                    <input name="adres" value="<?php echo $ayarcek['ayar_adres']?>" type="text" class="form-control"  placeholder="lütfen adresinizi giriniz.">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Site telefon numarası</label>
                    <input name="telefon" value="<?php echo $ayarcek['ayar_telefon']?>"type="text" class="form-control"  placeholder="lütfen telefon numaranızı giriniz.">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Site email adresi</label>
                    <input name="email" value="<?php echo $ayarcek['ayar_email']?>"type="email" class="form-control"  placeholder="lütfen email adresinizi giriniz.">
                  </div>
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button name="ayarkaydet" style="float:right;"type="submit" class="btn btn-primary">Kaydet</button>
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

<?php } elseif ($_GET['sayfa']=="sosyalmedya") { ?>
  
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
                <h3 class="card-title">Sosyal Medya Ayarları</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="islem.php" method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Facebook</label>
                    <input name="facebook" value="<?php echo $ayarcek['ayar_facebook']?>"type="text" class="form-control"  placeholder="lütfen sitenizin başlığını giriniz.">
                  </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">İnstagram</label>
                    <input name="instagram" value="<?php echo $ayarcek['ayar_instagram']?>" type="text" class="form-control"  placeholder="lütfen sitenizin açıklamasını giriniz.">
                  </div>
                  
                   <div class="form-group">
                    <label for="exampleInputEmail1">Youtube</label>
                    <input name="youtube" value="<?php echo $ayarcek['ayar_youtube'] ?>"type="text" class="form-control"  placeholder="lütfen sitenizin anahtar kelimesini giriniz.">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Twitter</label>
                    <input name="twitter" value="<?php echo $ayarcek['ayar_twitter']?>" type="text" class="form-control"  placeholder="lütfen adresinizi giriniz.">
                  </div>
                  
                  
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button name="sosyalmedyakaydet" style="float:right;"type="submit" class="btn btn-primary">Kaydet</button>
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



<?php } ?>
 <?php  require_once 'footer.php'; ?>