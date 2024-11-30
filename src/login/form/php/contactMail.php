<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Include PHPMailer autoload file

require 'C:\xampp\htdocs\studyMate\src\login\vendor\phpmailer\phpmailer\src\PHPMailer.php';
require 'C:\xampp\htdocs\studyMate\src\login\vendor\phpmailer\phpmailer\src\SMTP.php';
require 'C:\xampp\htdocs\studyMate\src\login\vendor\phpmailer\phpmailer\src\Exception.php';

$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];
$recipient = "studymate.co@gmail.com"; 
$subject = "Message from StudyMate Contact Form";

$confirmation_message = "Dear $name,\n\nThank you for contacting us. Our team will get in touch with you soon.";
$msg="Mail form : $email\n\n$message";
try {
    // Instantiate PHPMailer
    $mail = new PHPMailer(true);
    
    // Set mailer to use SMTP
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com.com'; // Your SMTP host
    $mail->SMTPAuth = true;
    $mail->Username = 'studymate.co@gmail.com'; // SMTP username
    $mail->Password = 'bazw kwrv yavp jars'; // SMTP password
    $mail->SMTPSecure = 'tls'; // Enable TLS encryption
    $mail->Port = 587; // TCP port to connect to
    
    // Set email parameters for the confirmation email
    $mail->setFrom('studymate.co@gmail.com', 'StudyMate');
    $mail->addAddress($email, $name); // Add recipient
    $mail->addReplyTo('studymate.co@gmail.com', 'StudyMate');
    $mail->isHTML(false); // Set email format to HTML
    $mail->Subject = $subject;
    $mail->Body = $confirmation_message;
    
    // Send confirmation email to the user
    $mail->send();

    // Set email parameters for the email to the recipient
    $mail->clearAddresses();
    $mail->addAddress($recipient);
    $mail->Body = $msg;
    
    // Send email to the recipient
    $mail->send();
    
    echo "success";
} catch (Exception $e) {
    echo "error: {$mail->ErrorInfo}";
}

?>
