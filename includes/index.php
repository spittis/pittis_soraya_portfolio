<?php
    include 'functions.php';
    
 
    if (isset($_GET["movie"])){ //this gets a single image
        $data = get_single_image($conn, $_GET["movie"]);
        echo json_encode($data);
    } else {
        $data = get_all_images($conn); //this gets all
        echo json_encode($data);
    }

?>