<!-- 구글 검색 : galley board css => CSS Only Pinterest-like Responsive Board Layout - Boardz.css | CSS ... -->
<!-- 출처 : https://www.cssscript.com/css-pinterest-like-responsive-board-layout-boardz-css/ -->

<!doctype html>

<html lang="en">
<head>
    <meta charset="UTF-8"> 

    <title>Boardz Demo</title>
    <meta name="description" content="Create Pinterest-like boards with pure CSS, in less than 1kB.">
    <meta name="author" content="Burak Karakan">
    <meta name="viewport" content="width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />
    <link rel="stylesheet" href="src/boardz.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/wingcss/0.1.8/wing.min.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
    <div class="seventyfive-percent  centered-block">
        <!-- Sample code block -->
        <div>    
            <hr class="seperator">

            <!-- Example header and explanation -->
            <div class="text-center">
                <h2>Beautiful <strong>Boardz</strong></h2>
                <div style="display: block; width: 50%; margin-right: auto; margin-left: auto; position: relative;">
                    <form class="example" action="board.php" method="GET">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>

            <!--<hr class="seperator fifty-percent">-->

            <!-- Example Boardz element. -->
            <div class="boardz centered-block beautiful">
			<?
				function useUL($number) {
					if ($number == 2 || $number == 5) {
						return true;
					} else {
						return false;
					}
				}
				
				$connect = mysql_connect("localhost","pjh","1234");
				$db_con = mysql_select_db("pjh_db", $connect);
				
				if ($_GET[search] != '') {
					$sql = "select * from boardz where title like '%".$_GET[search]."%'";
				} else {
					$sql = "select * from boardz";
				}
				
				$result = mysql_query($sql, $connect);
				$num = ceil(mysql_num_rows($result) / 3);
				$rowIdx = 1;
				while ($row = mysql_fetch_array($result)) {
					if ($rowIdx == 1) {
						echo "<ul>";
					}
					echo "<li>";
					if ($row[title] != '') {
						echo "<h1>".$row[title]."</h1>";
					}
					if ($row[contents] != '') {
						echo $row[contents]."<br />";
					}
					echo "
							<img src= '".$row[image_url]."' alt='demo image'/>
						 </li>";
					if ($rowIdx == mysql_num_rows($result)) {
						echo "</ul>";
					} else if ($rowIdx % $num == 0 ) {
						echo "</ul><ul>";
					}
					$rowIdx++;
				}
				
				mysql_close();

			?>      
            </div>
        </div>

        <hr class="seperator">

    </div>
</body>
</html>