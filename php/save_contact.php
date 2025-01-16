<?php


$connect = new mysqli('localhost', 'root', '', 'contact_form');

if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}


$name = $_POST['name'];
$email = $_POST['email'];
$description = $_POST['description'];

$sql = "INSERT INTO contacts (name, email, description) VALUES ('$name', '$email', '$description')";

if ($connect->query($sql) === TRUE) {
    echo "Contact saved successfully!";
} else {
    echo "Error: " . $sql . "<br>" . $connect->error;
}

$connect->close();
?>
