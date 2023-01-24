<?php require_once 'header.php';
require_once 'sidebar.php';

?>



  <div class="content-wrapper">
   
    <section class="content">
      <div class="container-fluid">
        
       
        <div class="row">
           <div class ="col-md-12">
            <div class="card card-primary">


              <div class="card-header">
                <h3 class="card-title">menüler</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="menu_islem.php" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Menü Adı</label>
                    <input name="menu_adi" type="text" class="form-control"  placeholder="lütfen sitenizin başlığını giriniz.">
                  </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Menü Başlık</label>
                    <input name="menu_baslik"  type="text" class="form-control"  placeholder="lütfen sitenizin açıklamasını giriniz.">
                  </div>
                  
                    <div class="form-group">
                    <label for="exampleInputEmail1">Menü İçerik</label>
                    <textarea name="menu_icerik" id="editor1" class="ckeditor"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Menü Resim</label>
                    <input name="menu_resim" type="file" class="form-control"  >
                  </div>
                
                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button style="float:right;"type="submit" class="btn btn-primary">Kaydet</button>
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