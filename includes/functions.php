<?php
    include 'connect.php';
    // get one image
    function get_single_image($pdo, $img) {
        $query = "SELECT * FROM images WHERE id = $img"; 
        //attach the id in the thumnail to ensure you are getting the right image

        $get_image = $pdo->query($query);
        $results = array();

        while($row = $get_image->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        return $results;
    }

    //get all images
    function get_all_images($pdo) {
        $query = "SELECT * FROM images";
        
        $get_image = $pdo->query($query);
        $results = array();
        
        while($row = $get_image->fetch(PDO::FETCH_ASSOC)) {
            $results[] = $row;
        }
        
        return $results; 
        }

        function get_svg($pdo, $svg) {
            $query = $pdo ->prepare("SELECT * FROM suitpiece WHERE id= ?");
            $query ->execute([$svg]);

            $results = array();

            while($row = $query->fetch(PDO::FETCH_ASSOC)){
                $results[] = $row;
            }
            return $results;
        }

?>