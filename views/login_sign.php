<?php
    session_start();
    if (isset($_GET["logout"]))
    {
        session_unset();
        session_destroy();
        header("location: index.php");
    }
    if (!isset($_SESSION["Tong_soluong_monan"]))
        $_SESSION["Tong_soluong_monan"] = 0;
    if (!isset($_SESSION["STT"]))
        $_SESSION["STT"] = 0;
    if (!isset($_SESSION["STT_ban"]))
        $_SESSION["STT_ban"] = 0;
    if (!isset($_SESSION["fullname-order"]))
        $_SESSION["fullname-order"] = "";
    if (!isset($_SESSION["phone-order"]))
        $_SESSION["phone-order"] = "";
    if (!isset($_SESSION["date"]))
        $_SESSION["date"] = "";
    if (!isset($_SESSION["time"]))
        $_SESSION["time"] = "";
    if (!isset($_SESSION["place"]))
        $_SESSION["place"] = "";
    if (!isset($_SESSION["note"]))
        $_SESSION["note"] = "";
    if (!isset($_SESSION["selected_table"]))
        $_SESSION["selected_table"] = "";
    
?>

<?php if (isset($_SESSION["tk"])) { ?>
    <a href="index.php?pid=18"> <i class='bx bxs-user' ></i> <?php echo $_SESSION["ten"]; ?> </a> | <a href="index.php?pid=6"> <i class="fa fa-shopping-basket" style="font-size: 1vw;"></i> (<?php echo $_SESSION["Tong_soluong_monan"] + $_SESSION["STT_ban"]; ?>) </a>
<?php } else { ?>
    <a href="signup.php"> Đăng Kí </a> | <a href="login.php"> Đăng Nhập </a> | <a href="login.php"> <i class="fa fa-shopping-basket" style="font-size: 1vw;"></i> (<?php echo $_SESSION["Tong_soluong_monan"] + $_SESSION["STT_ban"]; ?>) </a>
<?php } ?>