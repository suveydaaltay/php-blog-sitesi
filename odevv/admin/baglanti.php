<?php 

try {
 $baglanti=new PDO('mysql:host=localhost; dbname=odev;
 	charset=utf8', 'root' , '');
 //echo "bağlantı başarılı";
}catch (Exception $e) {
	echo "Hata yaptın :".$e->getMessage();

}


?>