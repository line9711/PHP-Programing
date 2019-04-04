<?php
#TODO: update form 인 경우, form 에 정보 표시
if(isset($_GET[num])) {
    #TODO: MySQL 테이블에서, num에 해당하는 레코드 가져오기
    //로직 실행되어야함.
}
?>

<!-- 출처 : https://colorlib.com/wp/template/responsive-table-v1/ -->
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V01</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>
<body>

<div class="limiter">
	<div class="container-table100">
		<div class="wrap-table100">
			<a href="index.php" style="border: 1px; padding: 10px; background: #36304a; display: block; width: 100px; text-align: center; border-radius: 10px; margin-bottom: 5px;"> Back </a>
            <?php
                if(isset($_GET[num])) {
                    echo "<form method=\"POST\" action=\"function/update.php?num=$_GET[num]\">";
                    //num이라는 파라미터가 있으면 update를 하는 것. post 폼을 만드는 것.
                } else {
                    echo "<form method=\"POST\" action=\"function/insert.php\">";
                    //아니라면 insert 를 하는 것.
                }
            ?>
				<div class="table100">
					<table>
						<thead>
						<tr class="table100-head">
							<th class="column1">Date</th>
							<th class="column2">Order ID</th>
							<th class="column3">Name</th>
							<th class="column4">Price</th>
							<th class="column5">Quantity</th>
							<th class="column6">Total</th>
						</tr>
						</thead>
						<tbody>
						<tr>
                            <?php
                            if(isset($_GET[num])) { //update 의 경우!
                                // 기본값 처리. num 이 있으면 수정하는 경우. input 값에 기본값이 표시가 되어있어야함. (업데이트 전) todo에 표시해야함.
                                //해당 정보 값에 기입해야함.
                                ?>
                                <td class="column1"> <input name="date" type="text" value="<? #TODO: 정보 표시 ?>" /> </td>
                                <td class="column2"> <input name="order_id" type="number" value="<? #TODO: 정보 표시 ?>" /> </td>
                                <td class="column3"> <input name="name" type="text" value="<?  #TODO: 정보 표시 ?>" /> </td>
                                <td class="column4"> <input name="price" type="number" placeholder="$" style="text-align: right;" value="<? #TODO: 정보 표시 ?>" /> </td>
                                <td class="column5"> <input name="quantity" type="number" value="<? #TODO: 정보 표시 ?>" style="text-align: right;" /> </td>
                                <td class="column6"> $<span id="total"> <? #TODO: 정보 표시 ?> </span> </td>
                                <?php
                            } else { //그냥 add하는 것이니까 추가값은 없음.
                                ?>
                                <td class="column1"> <input name="date" type="text" /> </td>
                                <td class="column2"> <input name="order_id" type="number" /> </td>
                                <td class="column3"> <input name="name" type="text" /> </td>
                                <td class="column4"> <input name="price" type="number" placeholder="$" style="text-align: right;" /> </td>
                                <td class="column5"> <input name="quantity" type="number" value="1" style="text-align: right;" /> </td>
                                <td class="column6"> $<span id="total"></span> </td>
                                <?php
                            }
                            ?>
						</tr>
						</tbody>
					</table>
				</div>
                <?php
                    if(isset($_GET[num])) { //겟이라는 파라미터에 num이 있으면 업데이트
                ?>
                    <a href="function/delete.php?num=<? echo $_GET[num] ?>" style="border: 1px; padding: 10px; background: #36304a; display: block; width: 100px; text-align: center; float: right; border-radius: 10px; margin-top: 5px; margin-left: 5px; color: #007bff;"> Delete </a>
                        //딜리트에 해당하는 버튼 생성. 프라이머리키(num)을 딜리트해야함. a태그로 num을 get방식으로 그대로 전달해서 보내줌.
                    <input style="border: 1px; padding: 10px; background: #36304a; display: block; width: 100px; text-align: center; float: right; border-radius: 10px; margin-top: 5px; margin-left: 5px; color: #007bff; cursor: pointer;" type="submit" value="Update">
                        //업데이트 클릭하면되면 update.php로 가게 되야함.
                <?php
                    } else {
                ?>
				    <input style="border: 1px; padding: 10px; background: #36304a; display: block; width: 100px; text-align: center; float: right; border-radius: 10px; margin-top: 5px; margin-left: 5px; color: #007bff; cursor: pointer;" type="submit" value="Insert">
                <?php
                    }
                ?>
			</form>
		</div>
	</div>
</div>




<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="js/main.js"></script>
<script>
    $("input[name='price']").change(function () {
        $('#total').text($("input[name='price']").val() * $("input[name='quantity']").val());
    })

    $("input[name='quantity']").change(function () {
        $('#total').text($("input[name='price']").val() * $("input[name='quantity']").val());
    })
</script>

</body>
</html>