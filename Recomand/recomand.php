<!DOCTYPE html>
<html>
<body>

<table width="600" border="1" cellspacing="1">

<tr>
<th>Date</th>
<th>Bus_id</th>
<th>total</th>
<tr>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "bus_booking_system (3)";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT t1.Date, t1.Bus_id, (SELECT COUNT(*) FROM booking WHERE Date = t1.Date) as total FROM booking t1 JOIN ( SELECT Date, Seats_no, Bus_id, COUNT(Bus_id) as count FROM booking GROUP BY date, Bus_id ) AS t2 ON t1.Date = t2.Date AND t1.Bus_id = t2.Bus_id GROUP BY t1.Date";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

		echo "<tr>";
		echo "<td>". $row["Date"]."</td>";
		echo "<td>". $row["Bus_id"]."</td>";
		echo "<td>". $row["total"] ."</td>";
		echo "</td>";
    }
} else {
    echo "0 results";
}

$conn->close();
?> 

</body>
</html>