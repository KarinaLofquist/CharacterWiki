<head>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body>
<?php
include "nav.inc.php";
include "db_connection.php";
$conn = OpenCon();
echo "<h2>Draconic ascenscion character index</h2>
<p>This is a wiki project that will contain a large amount of dnd characters from the the dnd campaign Draconic Ascenscion<p>

<h2>Current wiki:</h2>
";
$total_characters_sql = "SELECT COUNT(*) FROM characters";
$result = mysqli_query($conn,$total_characters_sql);
$total_rows = mysqli_fetch_array($result)[0];
echo "<h3>Total characters: $total_rows </h3>";
$total_pc_sql = "SELECT COUNT(*) FROM characters WHERE type = 'PC'";
$result = mysqli_query($conn,$total_pc_sql);
$total_rows = mysqli_fetch_array($result)[0];
echo "<h3>Player characters: $total_rows </h3>";
$total_fpc_sql = "SELECT COUNT(*) FROM characters WHERE type = 'FPC'";
$result = mysqli_query($conn,$total_fpc_sql);
$total_rows = mysqli_fetch_array($result)[0];
echo "<h3>Former player characters: $total_rows </h3>";
$total_rnpc_sql = "SELECT COUNT(*) FROM characters WHERE type = 'RNPC'";
$result = mysqli_query($conn,$total_rnpc_sql);
$total_rows = mysqli_fetch_array($result)[0];
echo "<h3>Reccuring NPCs: $total_rows </h3>";
$total_nrnpc_sql = "SELECT COUNT(*) FROM characters WHERE type = 'NRNPC'";
$result = mysqli_query($conn,$total_nrnpc_sql);
$total_rows = mysqli_fetch_array($result)[0];
echo "<h3>Non-reccuring NPCs: $total_rows </h3>";
?>

</body>
