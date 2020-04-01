$sql1 = "SELECT * FROM characters WHERE type = 'PC' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}


<h2>NPCs:</h2>
<h3>Dragon's Shadow</h3>
<?php
$sql1 = 'SELECT * FROM characters WHERE type = "NPC" AND prifaction = "Dragons Shadow" ORDER BY name ASC';
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
<h3>Church of the priestess</h3>
<?php
$sql1 = "SELECT * FROM characters WHERE type = 'NPC' AND prifaction = 'Church of the Priestess' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
<h3>King's Council</h3>
<?php
$sql1 = "SELECT * FROM characters WHERE type = 'NPC' AND prifaction = 'Kings Council' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
<h3>Necromancers</h3>
<?php
$sql1 = "SELECT * FROM characters WHERE type = 'NPC' AND prifaction = 'Necromancers' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
<h3>The Sigil</h3>
<?php
$sql1 = "SELECT * FROM characters WHERE type = 'NPC' AND prifaction = 'The Sigil' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
<h3>Nobility</h3>
<?php
$sql1 = "SELECT * FROM characters WHERE type = 'NPC' AND prifaction = 'Nobility' ORDER BY name ASC";
$result = mysqli_query($conn,$sql1);

while ($rad1 = mysqli_fetch_array($result)) {
  $name = htmlspecialchars($rad1['name'], ENT_QUOTES, 'UTF-8');
  echo "<form action='character.php' method='post'>
  <input type='submit' name='knapp' value='$name' />
  </form>";
}
?>
