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
                <h3 class="card-title">Menü Listesi</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              	<table id="" class="display" style="width:100%">
        <thead>
            <tr>
            <th>SIRA</th>
                <th>BAŞLIK</th>
                <th>LİNK</th>
                <th>DURUM</th>
                <th>DÜZENLE</th>
                <th>SİL</th>
            </tr>
        </thead>
        <tbody>
        	<?php
$query = $baglanti->query("SELECT * FROM menu_listesi", PDO::FETCH_ASSOC);
if ( $query->rowCount() ){
     foreach( $query as $row ){
    
        	?>
            <tr>
                <td><?=$row['sira']?></td>
                <td><?=$row['baslik']?></td>
                <td><?=$row['link']?></td>
                <td>
                  <?php
                  if($row['durum']==1)
                  {
                    echo "GÖSTERİLİYOR";
                  }
                  else
                  {
                    echo "GÖSTERİLMİYOR";
                  }
                  ?>
                  </td>
                  
                <td>
                  <a href="menu-duzenle.php?id=<?=$row['id']?>"><button type="button" class="btn btn-block btn-success">DÜZENLE</button></a>
                </td>
                <td>
                  <form action="islem.php" method="post">
                    <input type="hidden" name="id" value="<?=$row['id']?>">
                    <input type="submit" name="menu-sil" class="btn btn-block btn-danger" value="SİL">
                  </form>
                </td>
            </tr>
            <?php
             }
}


            ?>
        </tbody>
        <tfoot>
            <tr>
                <th>SIRA</th>
                <th>BAŞLIK</th>
                <th>LİNK</th>
                <th>DURUM</th>
                <th>DÜZENLE</th>
                <th>SİL</th>
            </tr>
        </tfoot>
    </table>
    





            </div>
            <!-- /.card -->
     
          </div>
        </div>
        
      </div>
    </section>
    <!-- /.content -->
  </div>





 <?php  require_once 'footer.php'; ?>