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
<!-- Heading -->

    <div style="display: flex; justify-content: flex-end">
    <button onclick="location.href='djinterface.php'">Go to DJ Interface</button>
    </div>

<!-- Display Title -->
    <h1>CSCI 466 Group Project - Karaoke</h1>

    <?php
    // PHP for connecting to the database
    include 'secrets_link.php';   // links to indivdual users secrets.php with $dbname, $host, $username, $password

    // echo "Host: $host \n<br>\n";  // just an example, should show 'courses' if everything worked.
    // echo "zID: $dbname \n";       // just an example, should show your zID if everything worked.

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
    // end of databse connection PHP
    ?>

<!-- Search for a Song -->
    <h2>Search for a song:</h2>
    <form action ="" method="POST">
    	<input type="text" id="userName" name="userName" placeholder="Put your name" value="<?PHP if(isset($_POST['userName'])) echo htmlspecialchars($_POST['userName']); ?>">
    	<input type="text" id="dollarAmount" name="dollarAmount" placeholder="$USD" value="<?PHP if(isset($_POST['dollarAmount'])) echo htmlspecialchars($_POST['dollarAmount']); ?>"><br>
        <label for="searchTerm">Search by artist, song title, or contributor</label><br>
        <input type="text" id="searchTerm" name="searchTerm" placeholder="e.g. Kid Cudi" value="<?PHP if(isset($_POST['searchTerm'])) echo htmlspecialchars($_POST['searchTerm']); ?>"><br>
        <input type="hidden" name="formType" value="SEARCH">
        <input type="hidden" name="Column" value="Artist">
        <input type="hidden" name="Ascending" value=true>
	<input type="submit" name="submit" value="Find Your Song!!!"/>
	
    </form>

    <?php
    // PHP to retrieve submitted form data
    // declare empty variable
    	$dollar_Amount = "0";
    	$search_Term = "";
	$name = "";
        $sort_Column = "Artist.Artist_Name";   // default
        $sort_Direction = "ASC";               // default
        $sort_DirectionBool = true;            // default


        // if form was submitted via post (which is should), put submitted data into variable
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
	    $search_Term = $_POST["searchTerm"];
	    $name = $_POST["userName"];
	    $dollar_Amount = $_POST["dollarAmount"];
            // set column to sort by
            if ($_POST["Column"] == "Version") {
                $sort_Column = "Kar_File.Extended_Title";
            }
            else if ($_POST["Column"] == "Song") {
                $sort_Column = "Song.Song_Name";
            }
            else if ($_POST["Column"] == "Artist") {
                $sort_Column = "Artist.Artist_Name";
            }

            // set direction
            if ($_POST["Ascending"] == false) {
                $sort_Direction = "DESC"; 
                $sort_DirectionBool = false;
            }

        }
    ?>


    <?php
    // PHP to display search results
    $sql = "SELECT Artist.Artist_Name AS 'Artist', Song.Song_Name AS 'Song Title', Kar_File.Extended_Title AS 'Version' 
             FROM Kar_File LEFT JOIN Song 
                ON Kar_File.Song_ID = Song.Song_ID 
            LEFT JOIN Artist
                ON Song.Artist_ID = Artist.Artist_ID
            LEFT JOIN Song_Contributor
                ON Song.Song_ID = Song_Contributor.Song_ID
            LEFT JOIN Contributor 
                ON Song_Contributor.Contributor_ID = Contributor.Contributor_ID
            WHERE Kar_File.Extended_Title LIKE CONCAT('%',?,'%') 
            OR Artist.Artist_Name LIKE CONCAT('%',?,'%')
            OR Contributor.Contributor_Name LIKE CONCAT('%',?,'%')
            GROUP BY Kar_File.Extended_Title 
            ORDER BY $sort_Column $sort_Direction
            ;";

    try {
        $statement = $pdo->prepare($sql);
        $statement->execute(array($search_Term, $search_Term, $search_Term));
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("\n<p>Failed search with error: {$e->getMessage()}</p>\n");
    }

    // print table with specified $rows
    echo "\n<table>\n";
    echo "<tr>\n";
    foreach(array_keys($rows[0]) as $heading) {
    	if ($heading === 'Song Title') {
            if ($_POST["Column"] == 'Song') { // this column is already being used to sort
                $sort_DirectionBool = !$sort_DirectionBool;
            } else {
                $sort_DirectionBool = true;
            }
            echo	"<th><form action='karaoke.php' method='POST'>
                <input type='hidden' name='Column' value='Song'>
		<input type='hidden' name='searchTerm' value=$search_Term>
		<input type='hidden' name='userName' value=$name>
		<input type='hidden' name='dollarAmount' value=$dollar_Amount>
		<input type='hidden' name='Ascending' value=$sort_DirectionBool>
                <button type='submit'>".$heading."</button>
                </form></th>\n"; 
        } else if ($heading === 'Artist') {
            if ($_POST["Column"] == 'Artist') { // this column is already being used to sort
                $sort_DirectionBool = !$sort_DirectionBool;
            } else {
                $sort_DirectionBool = true;
            }
            echo	"<th><form action='karaoke.php' method='POST'>
                <input type='hidden' name='Column' value='Artist'>
		<input type='hidden' name='searchTerm' value=$search_Term>
		<input type='hidden' name='userName' value=$name>
		<input type='hidden' name='dollarAmount' value=$dollar_Amount>
                <input type='hidden' name='Ascending' value=$sort_DirectionBool>
                <button type='submit'>".$heading."</button>
                </form></th>\n";
        } else if ($heading === 'Version') {
            if ($_POST["Column"] == 'Version') { // this column is already being used to sort
                $sort_DirectionBool = !$sort_DirectionBool;
            } else {
                $sort_DirectionBool = true;
            }
            echo	"<th><form action='karaoke.php' method='POST'>
                <input type='hidden' name='Column' value='Version'>
		<input type='hidden' name='searchTerm' value=$search_Term>
		<input type='hidden' name='userName' value=$name>
		<input type='hidden' name='dollarAmount' value=$dollar_Amount>
                <input type='hidden' name='Ascending' value=$sort_DirectionBool>
                <button type='submit'>".$heading."</button>
                </form></th>\n";
        }
        else {
            echo "<th>$heading</th>\n";
        }
    }
    // echo "<th>Regular Queue</th>\n";
    // echo "<th>Priority Queue</th>\n";
    echo "</tr>\n";
    foreach($rows as $row) {
        echo "<tr>\n";
        foreach($row as $col) {
            echo "<td>$col</td>\n";
        }
	echo "<td><form action='karaoke.php method='POST'>
		<input type='hidden' name='Select' value='Selected'>
		<button type='submit'>Select</button>
		</td>\n"; // Button to select song to add to queue
        echo "</tr>\n";
    }
    echo "</tr>\n";
    echo "</table>\n";
    // end of PHP to display search results
    ?>

</body>

</html>
