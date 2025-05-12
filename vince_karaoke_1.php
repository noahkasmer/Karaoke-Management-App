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

</head>

<body>

    <!-- Hello World -->

    <!-- Everything that follows is just an example, please update -->

    <h1>CSCI 466 Group Project - Karaoke</h1>

    <?php
    include 'secrets_link.php';   // links to indivdual users secrets.php with $dbname, $host, $username, $password

    echo "Host: $host \n<br>\n";  // just an example, should show 'courses' if everything worked.
    echo "zID: $dbname \n";       // just an example, should show your zID if everything worked.

    // set database options
    $dsn = "mysql:host=$host;dbname=$dbname";
    $options = [
        PDO::ATTR_ERRMODE               => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE    => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES      => false,
    ];

    // try to connect to database, otherwise print error and stop
    try {
        $pdo = new PDO($dsn, $username, $password, $options);
        echo "\n<!-- Successfully connected to database! -->\n";
    } catch (PDOException $e) {
        die("\n<p>Database conection failed with error: {$e->getMessage()}</p>\n");
    }

    $sql = 'SELECT * FROM Kar_File;';

    try {
        $statement = $pdo->prepare($sql);
        $statement->execute();
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("/n<p>Failed to get table: {$e->getMessage()}</p>\n");
    }
    echo "\n<h2>Files:</h2>\n";

    // print table with specified $rows

    function draw_table($rows){
    echo "\n<table>\n";
    echo "<tr>\n";
    foreach($rows[0] as $heading => $id) {
	////////////////////////////////////
    	if ($heading === 'Song_ID'){
	echo	"<th><form action='karaoke.php' method='POST'>
		 <input type='hidden' name='Song_ID' value=".$heading.">
		 <button type='submit'>".$heading."</button>
		 </form></th>";
	} else {
		echo "<th>$heading</th>\n";
	}
	////////////////////////////////////
    }
    echo "</tr>\n";
    foreach($rows as $row) {
        echo "<tr>\n";
        foreach($row as $col) {
            echo "<td>$col</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</tr>\n";
    echo "</table>\n";
    }
    ?>
<?php
    if($_SERVER['REQUEST_METHOD'] === 'POST'){
	    $song_id = $_POST['Song_ID'];
	    $sql = 'SELECT * FROM Kar_File ORDER BY Song_ID;';
	    $statement = $pdo->prepare($sql);
	    $statement->execute();
            $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
 
    }   
    draw_table($rows);

    ?>

</body>

</html>
