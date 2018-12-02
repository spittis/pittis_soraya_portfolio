<?php 

$user = "root";
$pwd = "root";

try {
    $conn = new PDO('mysql:host=localhost;dbname=db_portfolio',$user, $pwd);
    //var_dump($conn); //check connection - instead of doing a var element, use var_dump to 
    

} catch (PDOException $exception) {
    echo 'connect error!' . $exception->getMessage();
}

?>