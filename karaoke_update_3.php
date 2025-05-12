<?php
// helps show PHP errors
declare(strict_types=1);
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
?>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="description" content="Karaoke Project">
    <meta name="keywords" content="CSCI466, Group Project">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Karaoke Project</title>

    <!-- add a little style to the table, just for fun -->
    <style>
        th,
        td {
            border: 1px solid black;
            text-align: center;
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
    include 'secrets_link.php';   // links to individual users' secrets.php with $dbname, $host, $username, $password

    // set database options
    $dsn = "mysql:host=$host;dbname=$dbname";
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];

    // try to connect to database, otherwise print error and stop
    try {
        $pdo = new PDO($dsn, $username, $password, $options);
        echo "\n<!-- Successfully connected to database! -->\n";
    } catch (PDOException $e) {
        die("\n<p>Database connection failed with error: {$e->getMessage()}</p>\n");
    }
    ?>

    <!-- Search for a Song -->
    <h2>Search for a song:</h2>

    <form action="" method="POST">
    <input type="text" id="userName" name="userName" placeholder="Put your name" value="<?PHP if(isset($_POST['userName'])) echo htmlspecialchars($_POST['userName']); ?>">
    <input type="text" id="dollarAmount" name="dollarAmount" placeholder="$USD" value="<?PHP if(isset($_POST['dollarAmount'])) echo htmlspecialchars($_POST['dollarAmount']); ?>"><br>
        <label for="searchTerm">Search by artist, song title, or contributor</label><br>
        <input type="text" id="searchTerm" name="searchTerm" placeholder="e.g. Kid Cudi" value="<?php if (isset($_POST['searchTerm'])) echo htmlspecialchars($_POST['searchTerm']); ?>"><br>
        <input type="hidden" name="formType" value="SEARCH">
        <input type="submit" name="submit" value="Find Your Song!!!" />
    </form>

    <?php
    // Initialize variables
    $dollar_Amount = "0";
    $search_Term = "";
	$name = "";
    $search_Term = "";
    $sort_Column = "Artist.Artist_Name";  // Default sorting column
    $sort_Direction = "ASC";             // Default sorting direction

    // Map display headers to database columns 
    $header_to_column = [
        'Artist' => 'Artist.Artist_Name',
        'Song Title' => 'Song.Song_Name',
        'Version' => 'Kar_File.Extended_Title'
    ];

    // Handle form submission
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $search_Term = $_POST["searchTerm"] ?? "";
        $name = $_POST["userName"];
	    $dollar_Amount = $_POST["dollarAmount"];

        // Determine sort column
        if (isset($_POST["Column"]) && array_key_exists($_POST["Column"], $header_to_column)) {
            $sort_Column = $header_to_column[$_POST["Column"]];
        }

        // Determine sort direction
        if (isset($_POST["Ascending"])) {
            $sort_Direction = ($_POST["Ascending"] === "false") ? "DESC" : "ASC";
        }
    }
    ?>

    <?php
    // SQL query
    $sql = "SELECT
                Artist.Artist_Name AS 'Artist',
                Song.Song_Name AS 'Song Title',
                Kar_File.Extended_Title AS 'Version'
            FROM
                Kar_File
            LEFT JOIN Song
                ON Kar_File.Song_ID = Song.Song_ID
            LEFT JOIN Artist
                ON Song.Artist_ID = Artist.Artist_ID
            LEFT JOIN Song_Contributor
                ON Song.Song_ID = Song_Contributor.Song_ID
            LEFT JOIN Contributor
                ON Song_Contributor.Contributor_ID = Contributor.Contributor_ID
            WHERE
                Kar_File.Extended_Title LIKE CONCAT('%', ?, '%')
                OR Artist.Artist_Name LIKE CONCAT('%', ?, '%')
                OR Contributor.Contributor_Name LIKE CONCAT('%', ?, '%')
            GROUP BY
                Kar_File.Extended_Title
            ORDER BY
                $sort_Column $sort_Direction";

    // Execute query
    try {
        $statement = $pdo->prepare($sql);
        $statement->execute([$search_Term, $search_Term, $search_Term]);
        $rows = $statement->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        die("\n<p>Failed search with error: {$e->getMessage()}</p>\n");
    }

    // Display results
    if (!empty($rows)) {
        echo "\n<table>\n<tr>\n";
        foreach (array_keys($rows[0]) as $heading) {
            $nextDirection = ($sort_Column === $header_to_column[$heading] && $sort_Direction === "ASC") ? "false" : "true";
            echo "<th><form action='karaoke.php' method='POST' style='display:inline;'>
                    <input type='hidden' name='Column' value='{$heading}'>
                    <input type='hidden' name='userName' value=$name>
		            <input type='hidden' name='dollarAmount' value=$dollar_Amount>
                    <input type='hidden' name='Ascending' value='{$nextDirection}'>
                    <input type='hidden' name='searchTerm' value='" . htmlspecialchars($search_Term) . "'>
                    <button type='submit'>" . htmlspecialchars($heading) . " " . (($sort_Column === $header_to_column[$heading]) ? ($sort_Direction === 'ASC' ? '▲' : '▼') : '') . "</button>
                  </form></th>";
        }
        echo "</tr>\n";

        foreach ($rows as $row) {
            echo "<tr>\n";
            foreach ($row as $col) {
                echo "<td>" . htmlspecialchars($col) . "</td>\n";
            }
            echo "</tr>\n";
        }
        echo "</table>\n";
    } else {
        echo "<p>No results found for your search.</p>";
    }
    ?>
</body>

</html>
