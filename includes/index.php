<?php
    include 'functions.php';
    
 
    if (isset($_GET["movie"])){ //this gets a single image
        $data = get_single_image($pdo, $_GET["movie"]);
        echo json_encode($data);
    } elseif (isset($_GET["id"])){
        $data = get_svg($pdo, $_GET["id"]);
        echo json_encode($data);
    } else {
        $data = get_all_images($pdo); //this gets all
        echo json_encode($data);
    }

?>