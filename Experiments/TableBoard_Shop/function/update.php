<meta charset="UTF-8">
<?php
/**
 * Created by PhpStorm.
 * User: kim2
 * Date: 2019-04-04
 * Time: 오전 9:39
 */

# TODO: MySQL DB에서, num에 해당하는 레코드를 POST로 받아온 내용으로 수정하기!

	if ($_POST) {

		$connect = mysql_connect("localhost","pjh","1234");
		$db_con = mysql_select_db("pjh_db", $connect);

		$sql = "update tableboard_shop set date='".$_POST[date]."', order_id=".$_POST[order_id].", name='".$_POST[name]."', price=".$_POST[price].", quantity=".$_POST[quantity]." where num = ".$_POST[num];

		$result = mysql_query($sql, $connect);
		
		if ($result) {
			echo "<script> alert('SUCCESS!'); </script>";
		} else {
			echo "<script> alert('FAILED!'); </script>";
		}
		
		mysql_close();
	} else {
		echo "<script> alert('잘못된 접근입니다.'); </script>";
	}


?>

<script>
    location.replace('../index.php');
</script>
