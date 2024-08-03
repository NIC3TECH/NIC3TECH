<?php
session_start();
$email = $_POST["femail"];
$Password = $_POST["fpassword"];


$conn = new mysqli('localhost', 'root', '', 'customer table');

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stmt = $conn->prepare("SELECT femail, fpassword FROM customer WHERE femail = ? AND fpassword = ?");
$stmt->bind_param("ss", $email, $Password);
$stmt->execute();
$stmt->store_result();

if ($stmt->num_rows > 0) {
    $stmt->fetch();
    $_SESSION['femail'] = $email;
    echo'Sign in sucessfull please wait';

    ?>
    <script type="text/javascript">
    window.location = "http://localhost/NIC3%20TECH/Home.html";
    </script>
    <?php
} else { echo 'wrong email or password'
    ?>
    <script type="text/javascript">

    window.location = "http://localhost/NIC3%20TECH/index.html";
    alert('wrong email or password');
    </script>
    <?php
}

session_destroy();
$stmt->close();
$conn->close();
?>