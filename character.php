<head>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
  <?php
  include "nav.inc.php";
  include "db_connection.php";
  $conn = OpenCon();
  if (isset($_GET['pageno'])) {
    $pageno = $_GET['pageno'];
    $faction = $_GET['faction'];
  } else {
    $pageno = 1;
  }
  $no_of_records_per_page = 1;
  $offset = ($pageno-1) * $no_of_records_per_page;
  $factionresult = "none";
  if((empty($_POST) || $_POST['faction'] == "Choose faction") && (empty($_GET['faction']) || $_GET['faction'] == "none")){
    $total_pages_sql = "SELECT COUNT(*) FROM characters";
    $result = mysqli_query($conn,$total_pages_sql);
    $total_rows = mysqli_fetch_array($result)[0];
    $total_pages = ceil($total_rows / $no_of_records_per_page);

    $sql = "SELECT name, lastname, title, class, age, height, race, prifaction, prirank, secfaction, secrank, description, lore, haircolor, eyecolor, skincolor, alive FROM characters ORDER BY name ASC LIMIT $offset, $no_of_records_per_page";
    $preparedStatement= $conn->prepare($sql);
  } else {
    if(isset($_GET['faction']) && !empty($_GET['faction'] && $_GET['faction'] != "none")) {
      $factionresult = $_GET['faction'];
    } else {
      $factionresult = $_POST['faction'];
    }
    $total_pages_sql = "SELECT DISTINCT COUNT(*) FROM characters WHERE prifaction = ? OR secfaction = ?";
    $preparedStatement= $conn->prepare($total_pages_sql);
    $preparedStatement->bind_param("ss", $factionresult, $factionresult);
    $preparedStatement->execute();

    $result = $preparedStatement->get_result();
    $total_rows = mysqli_fetch_array($result)[0];
    $total_pages = ceil($total_rows / $no_of_records_per_page);

    $sql = "SELECT name, lastname, title, class, age, height, race, prifaction, prirank, secfaction, secrank, description, lore, haircolor, eyecolor, skincolor, alive FROM characters WHERE prifaction = ? OR secfaction = ? ORDER BY name ASC LIMIT $offset, $no_of_records_per_page";
    $preparedStatement= $conn->prepare($sql);
    $preparedStatement->bind_param("ss", $factionresult, $factionresult);
    }
    $preparedStatement->execute();
    $preparedStatement->bind_result($rawName, $rawLastname, $rawTitle, $rawClass, $rawAge, $rawHeight, $rawRace, $rawPri, $rawPriR, $rawSec, $rawSecR, $rawDesc, $rawLore, $rawHairc, $rawEyec, $rawSkinc, $rawAlive);
    $factionresult = htmlspecialchars($factionresult, ENT_QUOTES, 'UTF-8');
    while($preparedStatement->fetch()){
      $name = htmlspecialchars($rawName, ENT_QUOTES, 'UTF-8');
      $lastname = htmlspecialchars($rawLastname, ENT_QUOTES, 'UTF-8');
      $title = htmlspecialchars($rawTitle, ENT_QUOTES, 'UTF-8');
      $class = htmlspecialchars($rawClass, ENT_QUOTES, 'UTF-8');
      $age = htmlspecialchars($rawAge, ENT_QUOTES, 'UTF-8');
      $height = htmlspecialchars($rawHeight, ENT_QUOTES, 'UTF-8');
      $race = htmlspecialchars($rawRace, ENT_QUOTES, 'UTF-8');
      $prifaction = htmlspecialchars($rawPri, ENT_QUOTES, 'UTF-8');
      $prirank = htmlspecialchars($rawPriR, ENT_QUOTES, 'UTF-8');
      $secfaction = htmlspecialchars($rawSec, ENT_QUOTES, 'UTF-8');
      $secrank = htmlspecialchars($rawSecR, ENT_QUOTES, 'UTF-8');
      $description = htmlspecialchars($rawDesc, ENT_QUOTES, 'UTF-8');
      $lore = htmlspecialchars($rawLore, ENT_QUOTES, 'UTF-8');
      $haircolor = htmlspecialchars($rawHairc, ENT_QUOTES, 'UTF-8');
      $eyecolor = htmlspecialchars($rawEyec, ENT_QUOTES, 'UTF-8');
      $skincolor = htmlspecialchars($rawSkinc, ENT_QUOTES, 'UTF-8');
      $alive = htmlspecialchars($rawAlive, ENT_QUOTES, 'UTF-8');
      echo "<div class='menu'>
            <div class='input'>
            Page $pageno of $total_pages
            <ul class='pagination'>
            <li style='float: left;'><a href='";
            echo "?faction=".($factionresult);
            echo "&pageno=1'>First</a></li>
              <li style='float: left;'>
            <a href='";
            echo '?faction='.($factionresult);
            if($pageno <= 1){ echo '#';
            } else { echo "&pageno=".($pageno - 1); }
      echo "'>Prev</a>
            </li>
            <li style='float: left;'>
            <a href='";
            echo '?faction='.($factionresult);
            if($pageno >= $total_pages){ echo '#';
            } else { echo "&pageno=".($pageno + 1); }
      echo  "'>Next</a>
              </li>
            <li style='float: left;'><a href='";
            echo "?faction=".($factionresult);
            echo "&pageno= $total_pages' name='faction'>Last</a></li>
            </ul>
            </div>
            </div>";
      echo  "
            <div class='row'>
            <div class='leftcolumn'>
            <div class='card'>
            <h2>$name</h2>
            <h3>General:</h3>
            Full name: $title $name $lastname<br>
            Class: $class<br>
            Age: $age<br>
            Height: $height<br>
            Race: $race<br>
            Life status: ";
            if($alive == '1') { echo "Alive";} else {
              echo "Deceased";
            }
        echo"<h3>Apperance:</h3>
            Haircolor: $haircolor<br>
            Eyecolor: $eyecolor<br>
            Skincolor: $skincolor<br>

            <h3>Description:</h3>
            $description<br>
            <h3>Factions:</h3>
            Primary faction: $prifaction<br>
            Rank: $prirank<br>";
            if($secfaction !== "") {
            echo "Secondary faction: $secfaction<br>
            Rank: $secrank<br>";
            }
            echo "
            <h3>Lore:</h3> $lore<br>
            </div>
            </div>
            </div>";
    }
    echo "
        <div class='rightcolumn' >
        <div class='card'>
        <h2>Filters:</h2>
        Faction:
        <select form='factionForm' name='faction'>
        <option>Choose faction</option>}";
        $sql2 = "SELECT DISTINCT prifaction FROM characters ORDER BY prifaction ASC";
        $result = mysqli_query($conn,$sql2);
        while ($rad = mysqli_fetch_array($result)) {
          $faction = htmlspecialchars($rad['prifaction'], ENT_QUOTES, 'UTF-8');
          echo "<option value='$faction'>$faction</option>}";
        }
        echo "</select></div><br>
        <form id='factionForm' action='character.php' method='post' style='float: left;'>
        <input type='submit' name='knapp' value='Filter by this catagory' style='float: left;'/>
        </form>
        </div>
        </div>";
    ?>

  </body>
