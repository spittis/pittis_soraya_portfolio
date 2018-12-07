<?php
    include 'connect.php';
    // get one video first
    function get_single_image($pdo, $vid) {
        $query = "SELECT * FROM images WHERE id = $vid"; 
        //attach the id in the thumnail to ensure you are getting the right image

        $get_image = $pdo->query($query);
        $results = array();

        while($row = $get_image->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    //get all videos
    function get_all_images($pdo) {
        $query = "SELECT * FROM images";
        
        $get_image = $pdo->query($query);
        $results = array();
        
        while($row = $get_image->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        
        return $results; 
        }

?>