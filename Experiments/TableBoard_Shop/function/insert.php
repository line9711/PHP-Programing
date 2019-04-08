<?php
/**
 * Created by PhpStorm.
 * User: kim2
 * Date: 2019-04-04
 * Time: 오전 9:39
 */

# TODO: MySQL DB에서, POST로 받아온 내용 입력하기!

	if ($_POST) {

		$connect = mysql_connect("localhost","pjh","1234");
		$db_con = mysql_select_db("pjh_db", $connect);

		$sql = "select count(*) as cnt from tableboard_shop";

		$result = mysql_query($sql, $connect);

		$row = mysql_fetch_array($result);
		$cnt = $row[cnt];

		$sql = "insert into tableboard_shop values (".$cnt.", '".$_POST[date]."', ".$_POST[order_id].", '".$_POST[name]."', ".$_POST[price].", ".$_POST[quantity].")";

		$result = mysql_query($sql, $connect);
		
		if ($result) {
			echo "<script> alert('SUCCESS!'); </script>";
		} else {
			echo "<script> alert('FAILED!'); </script>";
		}
		
		mysql_close();
	} else { //POST 방법을 이용하지 않고 접근하면 오류
		echo "<script> alert('잘못된 접근입니다.'); </script>";
	}


?>

<script>
    location.replace('../index.php');
</script>
