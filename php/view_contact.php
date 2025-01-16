
<?php

$connect = new mysqli("localhost", "root", "", "contact_form"); 


if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}


$sql = "SELECT * FROM contacts";  
$result = $connect->query($sql);

?>


<html>
<head>
    <meta charset="UTF-8">
    <title>Gourmet's Guide</title>

<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>

<button class="to-main-button" onclick="location.href='../index.html'"></button>
<p class = 'title'>Gourmet's Guide</p>
<a href="../contact.html"><img src="../images/backArrow.png" class="template-back-arrow"></a>


<div class ="dark-frame"></div>
<br><br><br><br><br><br><br>


<?php


if ($result->num_rows > 0) {
 
    while ($row = $result->fetch_assoc()) {
        echo "<div class = 'contact_view_container' >
    <h3 class = 'contact_view_name' >" . $row["name"] . "</h3>
    <h4 class = 'contact_view_email' >" . $row["email"] . "</h4>
    <p  class = 'contact_view_description'>". $row["description"] . "</p>
</div>";
    }
    
} else {
    echo "Veri bulunamadı.";
}
$connect->close();
?>


<br><br><br><br>

</body>


</html>