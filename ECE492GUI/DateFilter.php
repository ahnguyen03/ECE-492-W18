<?php
	header("Access-Control-Allow-Origin: *");
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "ece492database";
	
	// Get passed data
	$year = intval($_GET['year']);
	$month = intval($_GET['month']);
	$day = intval($_GET['day']);
	$hour = intval($_GET['hour']);
	$min = intval($_GET['min']);
	$sec = intval($_GET['sec']);
	
	$q =  '"' . (string)$year . "-" . (string)$month . "-" . (string)$day . " " . (string)$hour . ":" . (string)$min . ":" . (string)$sec . '"';

	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if (!$conn) {
	    die("Connection failed: " . mysqli_error($conn));
	}
	mysqli_select_db($conn, "remotesensor");
	$sql = "SELECT DISTINCT *
FROM remotestation as r
WHERE r.Date = (SELECT MAX(Date) from remotestation as r2 where r2.StationName = r.StationName AND r2.Date < " . $q . ")
ORDER by r.StationName ASC;";

	$result = mysqli_query($conn, $sql);
	$resultCheck = mysqli_num_rows($result);
	echo "StationName,Latitude,Longitude,Temperature,Dust,Date\n";
	if ($resultCheck > 0) {
	    // output data of each row
	    while($row = mysqli_fetch_assoc($result)) {
	        echo $row['StationName'] . "," . $row["Latitude"] . "," . $row["Longitude"] . "," . $row["Temperature"] . "," . $row["Dust"] . "," . $row["Date"] . "\n";
	    }
	} else {
	    echo "No Rows";
	}
	mysqli_close($conn);
?>