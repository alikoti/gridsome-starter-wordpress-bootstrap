<!doctype html> <html lang="en"> <head> <meta charset="utf-8"> <title>Docker Compose Demo</title> <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/dark.min.css"> 
</head> <body>
    <h1>This is a Docker Compose Demo Page.</h1> <p>This content is being served by an Apache php container.</p> </body>








<?php

echo 'test';
$host = 'db';

$user = 'root';

//database user password
$pass = 'asterisk';

// database name
$mydatabase = 'asterisk';
// check the mysql connection status

$conn = new mysqli($host, $user, $pass, $mydatabase);

// select query
$sql = 'SELECT * FROM sip_conf';






if ($result = $conn->query($sql)) {
    echo "<table border='1'>";
    
    // Output table header
    echo "<tr>";
    $row = $result->fetch_assoc();
    foreach ($row as $key => $value) {
        echo "<th>$key</th>";
    }
    echo "</tr>";

    // Output data rows
    $result->data_seek(0); // Reset the result set pointer to the beginning
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        foreach ($row as $value) {
            echo "<td>$value</td>";
        }
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "Error: " . $conn->error;
}





//if ($result = $conn->query($sql)) {
//    while ($row = $result->fetch_assoc()) {
//        foreach ($row as $key => $value) {
//            echo "<tr> $key: $value,</tr> ";
//        }
 //       echo "\n";
  //  }
//}


//  $data = $result->fetch_object();
   // print_r($data);

//foreach ($array as $key => $value) {
//    echo "Key: $key; Value: $value\n";
//}

  //  }
?>



</html>

