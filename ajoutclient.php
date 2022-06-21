<?php
mysql_connect("localhost","root","") or die("err");
mysql_select_db("location") or die("rrr");
extract($_POST);

$req=mysql_query("SELECT * from client where ncin='$cin'");
if (mysql_num_rows($req)!=0){
    echo("clien existant");
}else{
    $r=mysql_query("INSERT into client values('$cin','$nom','$pr','$tel') ");
   
    echo("inserer");
   
}
?>