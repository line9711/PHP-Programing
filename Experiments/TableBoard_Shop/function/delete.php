<?php
/**
 * Created by PhpStorm.
 * User: kim2
 * Date: 2019-04-04
 * Time: 오전 9:39
 */

# TODO: MySQL DB에서, num에 해당하는 레코드 삭제하기!

	if (isset($_GET[num])) {

		$connect = mysql_connect("localhost","pjh","1234");
		$db_con = mysql_select_db("pjh_db", $connect);

		$sql = "DELETE FROM tableboard_shop WHERE num=".$_GET[num];

		$result = mysql_query($sql, $connect);
	
		if ($result) {
			echo "<script> alert('SUCCESS!'); </script>";
		} else { //쿼리 실행이 올바르게 이뤄지지 않을 때
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
