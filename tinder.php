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
          } else {
              $pageno = 1;
          }
          $no_of_records_per_page = 1;
          $offset = ($pageno-1) * $no_of_records_per_page;

          $total_pages_sql = "SELECT COUNT(*) FROM characters WHERE alive = '1' AND dateable = '1'";
          $result = mysqli_query($conn,$total_pages_sql);
          $total_rows = mysqli_fetch_array($result)[0];
          $total_pages = ceil($total_rows / $no_of_records_per_page);

          $sql = "SELECT * FROM characters WHERE alive = '1' AND dateable = '1' ORDER BY name ASC LIMIT $offset, $no_of_records_per_page";
          $res_data = mysqli_query($conn,$sql);
          while($row = mysqli_fetch_array($res_data)){
            $name = htmlspecialchars($row["name"], ENT_QUOTES, 'UTF-8');
            $lastname = htmlspecialchars($row["lastname"], ENT_QUOTES, 'UTF-8');
            $title = htmlspecialchars($row["title"], ENT_QUOTES, 'UTF-8');
            $class = htmlspecialchars($row['class'], ENT_QUOTES, 'UTF-8');
            $age = htmlspecialchars($row['age'], ENT_QUOTES, 'UTF-8');
            $height = htmlspecialchars($row['height'], ENT_QUOTES, 'UTF-8');
            $race = htmlspecialchars($row['race'], ENT_QUOTES, 'UTF-8');
            $prifaction = htmlspecialchars($row['prifaction'], ENT_QUOTES, 'UTF-8');
            $secfaction = htmlspecialchars($row['secfaction'], ENT_QUOTES, 'UTF-8');
            $description = htmlspecialchars($row['description'], ENT_QUOTES, 'UTF-8');
            $lore = htmlspecialchars($row['lore'], ENT_QUOTES, 'UTF-8');
            $haircolor = htmlspecialchars($row['haircolor'], ENT_QUOTES, 'UTF-8');
            $eyecolor = htmlspecialchars($row['eyecolor'], ENT_QUOTES, 'UTF-8');
            $skincolor = htmlspecialchars($row['skincolor'], ENT_QUOTES, 'UTF-8');
            $sexuality = htmlspecialchars($row['sexuality'], ENT_QUOTES, 'UTF-8');
            $likes = htmlspecialchars($row['likes'], ENT_QUOTES, 'UTF-8');
            $dislikes = htmlspecialchars($row['dislikes'], ENT_QUOTES, 'UTF-8');
            $status = htmlspecialchars($row['status'], ENT_QUOTES, 'UTF-8');
            $lookingfor = htmlspecialchars($row['lookingfor'], ENT_QUOTES, 'UTF-8');
            echo "<div class='container'>
                  Page $pageno of $total_pages
                  <ul class='pagination'>
                  <li><a href='?pageno=1'>First</a></li>
                    <li>
                  <a href='";
                  if($pageno <= 1){ echo '#';
                  } else { echo "?pageno=".($pageno - 1); }
            echo "'>Prev</a>
                  </li>
                  <li>
                  <a href='";
                  if($pageno >= $total_pages){ echo '#';
                  } else { echo "?pageno=".($pageno + 1); }
            echo  "'>Next</a>
                    </li>
                  <li><a href='?pageno= $total_pages'";
            echo ">Last</a></li>
                  </ul>";
            echo  "<br><br><h2>$name</h2>
                  <h3>General:</h3>
                  Full name: $title $name $lastname<br>
                  Class: $class<br>
                  Age: $age<br>
                  Height: $height<br>
                  Race: $race<br>
                  <h3>Info:</h3>
                  Sexuality: $sexuality<br>
                  Status: $status<br>
                  Likes: $likes<br>
                  Dislikes: $dislikes<br>
                  In search of: $lookingfor
                  </div>";
          }
          ?>

  </body>
