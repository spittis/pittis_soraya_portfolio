<?php
    include 'functions.php';
    
    //single movie route
    if (isset($_GET["movie"])){
        $data = get_single_image($conn, $_GET["movie"]);
        echo json_encode($data);
    } else {
        $data = get_all_images($conn);
        echo json_encode($data);
        //can use this for portfolio pieces too - does not only apply to videos
    }

?>