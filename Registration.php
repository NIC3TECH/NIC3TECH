<?php
$fullname = $_POST["fname"];
$Password = $_POST["fpassword"];
$email = $_POST["femail"];
$phone = $_POST["fphone"];
$address = $_POST["faddress"];

$conn = new mysqli('localhost', 'root', '', 'customer table');


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


$stmt = $conn->prepare("INSERT INTO customer (fname, fpassword, femail, fphone, faddress) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssis", $fullname, $Password, $email, $phone, $address);

if ($stmt->execute() === TRUE) {
    ?>
<script type="text/javascript">
window.location = "index.html";
</script>      
    <?php
} else {
   die("Error: ". $stmt->error) ;
}


$stmt->close();
$conn->close();
?>
