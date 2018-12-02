<?php 


var_dump($_POST); 
//the fake_mail is just a temporary replacement of mail() function within PHP
function fake_mail($to, $subject, $message, $headers){
    echo '==== Fake Emails ====' .PHP_EOL;
    echo 'Subject: '.$subject.PHP_EOL;
    echo 'Email To: '.$to.PHP_EOL;
    echo 'Message: '.$message.PHP_EOL; 
    echo '==== Emails Ends ==== '.PHP_EOL;

    return true;

}


// so you don't need everything above, because basically php has a mail function so he is just making a fake one instead.

function send_email(){
    //email validations:checking required fields

    if(empty($_POST['name']) 
        || empty($_POST['email'])
        || empty($_POST['message'])){ //if any of those are empty, we should do something here
        
        echo 'You are missing some required fields';
        exit;
        }


    //email validations: checking fields contain certain values
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            echo 'Your email is not valid';
            exit;
        }
    


    $to = 'soraya.pittis@hotmail.com';
    $subject = 'This is an email from '.$_POST['name'];
    $message = 'Message Body: ' .$_POST['message'];
    $headers = 'From: noreply@sorayapittis.com';
    $headers .= 'Reply-To: ' .$_POST['email'];

    fake_mail($to, $subject, $message, $headers);
    //In your server use the following line instead:
    //mail($to, $subject, $message, $headers);

}

send_email();


?>