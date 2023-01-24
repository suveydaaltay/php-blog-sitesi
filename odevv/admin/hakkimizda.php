<?php require_once 'header.php';
require_once 'sidebar.php';

$hakkimizdasor=$baglanti->prepare("SELECT * FROM hakkimizda where hakkimizda_id=?");
$hakkimizdasor->execute(array(1));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);


/*
if(isset($_POST['hakkimizdakaydet']))
{
if(isset($_FILES['resim'])){
      $errors= array();
      $file_name = $_FILES['resim']['name'];
      $file_size =$_FILES['resim']['size'];
      $file_tmp =$_FILES['resim']['tmp_name'];
      $file_type=$_FILES['resim']['type'];
      
     //print_r($_FILES['resim']);
    
         move_uploaded_file($file_tmp,"resimler/hakkimizda/".$file_name);
         echo "Success";
      
    }
}

*/

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
                <h3 class="card-title">Hakkımızda</h3>
              </div>
              <!-- /.card-header -->

              <!-- form start -->
              <form action="islem.php" method="post" enctype="multipart/form-data">

                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Hakkımızda Resim</label>
                    <img style="width:200px" src="<?php echo $hakkimizdacek['hakkimizda_resim']?>">
                  </div>
                  <input type="hidden" name="eskiresimm" value="<?=$hakkimizdacek['hakkimizda_resim']?>">

                  <div class="form-group">
                    <label for="exampleInputEmail1">Hakkımızda Resim</label>
                    <input name="resim" type="file" class="form-control"  >
                  </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Hakkımızda Başlık</label>
                    <input name="baslik" value="<?php echo $hakkimizdacek['hakkimizda_baslik']?>" type="text" class="form-control"  placeholder="lütfen sitenizin başlığını giriniz.">
                  </div>
                  
                   
                   <div class="form-group">
                    <label for="exampleInputEmail1">Hakkımızda Açıklama</label>
                    <textarea name="aciklama" id="editor1" class="ckeditor"><?php echo $hakkimizdacek['hakkimizda_aciklama'] ?></textarea>
                  </div>
                  
                  
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button name="hakkimizdakaydet" style="float:right;"type="submit" class="btn btn-primary">Kaydet</button>
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