<?php
// helps show PHP errors
declare(strict_types = 1);
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
?>

<html lang="en">

<head>

    <meta charset="utf-8"/>
    <meta name="description" content="Karaoke Project">
    <meta name="keywords" content="CSCI466, Group Project">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Karaoke Project</title>

    <!-- add a little style to the table, just for fun -->
    <style>
    th, td {
    border: 1px solid black;
    text-align:center;
    }
    th {
    background-color: #beeeef;
    }
    </style>
    <div style="display: flex; justify-content: flex-end">
    <button onclick="location.href='karaoke.php'">Go to Karaoke Interface</button>
    </div>

</head>
<center>
<form method="POST" action="">

<body>

    <!-- Hello World -->

    <!-- Everything that follows is just an example, please update -->

    <h1>CSCI 466 Group Project - DJ Interface</h1>

    <?php
    include 'secrets_link.php';   // links to indivdual users secrets.php with $dbname, $host, $username, $password

    //echo "Host: $host \n<br>\n";  // just an example, should show 'courses' if everything worked.
    //echo "zID: $dbname \n";       // just an example, should show your zID if everything worked.

    // set database options
    $dsn = "mysql:host=$host;dbname=$dbname";
    $options = [
        PDO::ATTR_ERRMODE               => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE    => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES      => false,
    ];
	echo"<br> <h2> Select A Song to be Played Then Click [Play Selected Song] </h2>";			


    // try to connect to database, otherwise print error and stop
    try {
        $pdo = new PDO($dsn, $username, $password, $options);
        echo "\n<!-- Successfully connected to database! -->\n";
    } catch (PDOException $e) {
        die("\n<p>Database conection failed with error: {$e->getMessage()}</p>\n");
    }
	echo "<br> <button style='height:100px;width:200px'  type='submit'>Play Selected Song</button> <br>";
	//Removing Things From The Queue
	$PrioritySongSelected = $_POST['priority_selected_song'] ?? null;
    $NormalSongSelected = $_POST['normal_selected_song'] ?? null;
	
	if($PrioritySongSelected != null || $NormalSongSelected != null){
		if($PrioritySongSelected != null){
			$del = 'DELETE FROM Priority_Choice WHERE Date_Time = :dateTime';
            $statement = $pdo->prepare($del);
            $statement->execute([':dateTime' => $PrioritySongSelected]);
			echo"<br> High Baller Song Has Been Played! <br>";
		}
		else{
			$del = 'DELETE FROM Regular_Choice WHERE Date_Time = :dateTime';
            $statement = $pdo->prepare($del);
            $statement->execute([':dateTime' => $NormalSongSelected]);
			echo"<br> Normal Song Has Been Played <br>";			
		}			
	}
	//Grab Priority Choice Tables
    $sql = 'SELECT * FROM Priority_Choice JOIN Users USING (User_ID) JOIN Kar_File USING (File_Name) JOIN Song USING (Song_ID) JOIN Artist USING (Artist_ID) ORDER BY Money_Amt DESC, DATE_TIME ASC;';
    $rsql = 'SELECT * FROM Regular_Choice JOIN Users USING (User_ID) JOIN Kar_File USING (File_Name) JOIN Song USING (Song_ID) JOIN Artist USING (Artist_ID) ORDER BY Regular_Choice.Date_Time ASC;';

    try {
        $statement = $pdo->prepare($sql);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("/n<p>Failed to get table: {$e->getMessage()}</p>\n");
    }
	$statement = $pdo->prepare($sql);
	$statement->execute();
	$topRow = $statement->fetch(PDO::FETCH_ASSOC);
	if($topRow){
		echo"<br> <h2> Recommended Song From a High Baller: {$topRow['Extended_Title']} </h2> <br>";
	}
	$statement = $pdo->prepare($rsql);
	$statement->execute();
	$topRowR = $statement->fetch(PDO::FETCH_ASSOC);
	if($topRowR && !$topRow){
		echo"<br> <h2> Recommended Song From a Normal Person: {$topRowR['Extended_Title']} </h2> <br>";
	}
	if(!$topRowR && !$topRow){
	echo"<br> <h2> Song Queue Is Empty </h2> <br>";
	}
    echo "\n<h2>Express Queue for High Ballers:</h2>\n";
    // Print Express Queue
    echo "</tr>\n";
    foreach($rows as $row) {
        echo "<tr>\n";
		echo "<input type='radio' id='priority_{$row['Date_Time']}' name='priority_selected_song' value='{$row['Date_Time']}'>";
		echo "<label for='priority_{$row['File_Name']}'> {$row['Extended_Title']} by {$row['Artist_Name']} ------ Requested by: {$row['User_Name']} <br> Play File -- {$row['File_Name']} <br> <br> </label>";
        echo "</tr>\n";
    }

	//Grab Regular Choice Tables

    try {
        $statement = $pdo->prepare($rsql);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("/n<p>Failed to get table: {$e->getMessage()}</p>\n");
    }
	
    echo "<h2>Normal Queue:</h2>\n";

    // Print Regular Queue
    echo "</tr>\n";
    foreach($rows as $row) {
        echo "<tr>\n";
		echo "<input type='radio' id='normal_{$row['Date_Time']}' name='normal_selected_song' value='{$row['Date_Time']}'>";
		echo "<label for='normal_{$row['File_Name']}'> {$row['Extended_Title']} by {$row['Artist_Name']} ------ Requested by: {$row['User_Name']} <br> Play File -- {$row['File_Name']} <br> <br> </label>";
        echo "</tr>\n";
    }

    ?>
</center>
</form>
</body>

</html>
