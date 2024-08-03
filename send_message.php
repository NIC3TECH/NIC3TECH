<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = $_POST["fname"];
  $email = $_POST["femail"];
  $subject = $_POST["fsubject"];
  $message = $_POST["fmessage"];

  $conn = new mysqli("localhost", "root", "", "customer table");

  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  
  $sql = "INSERT INTO contactus1 (fname, femail, fsubject, fmessage)
  VALUES ('$name', '$email', '$subject', '$message')";

  if ($conn->query($sql) === TRUE) {
    echo "Thank you for contacting us! We will respond to your message as soon as possible.";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
}
?>
