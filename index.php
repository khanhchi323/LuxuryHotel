<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxury Restaurant</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" href="assets/images/LogoSub.png" sizes="16x16">
        <script src="assets/js/scroll.js"> </script>
</head>
<body>
<div class = container >
        <?php
                include("views/header.php");
                include("views/header_scroll.php");
                if (!isset($_GET["pid"]) && !isset($_GET["tim-kiem-monan"]))
                {
                        include("views/trangchu.php");  
                        include("views/service.php");
                }
                else if (isset($_GET["pid"]))
                {
                        $pid = intval($_GET["pid"]);
                        switch($pid)
                        {
                //                 case 1:
                //                         include("views/thucdon.php");
                //                         break;
                //                 case 2:
                //                         include("views/datban.       php");
                //                         break;
                //                 case 3:
                //                         include("views/monan_mo_ta.php");
                //                         break;
                                // case 4:
                                //         include("views/service. php");
                                //         break;
                //                 case 5:
                //                         if (isset($_POST["ma_monan"]))
                //                                 include("views/them_monan.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 6:
                //                         if (isset($_SESSION["tk"]))
                //                                 include("views/Giohang-datban-section.php");
                //                         else
                //                                 header("location: login.php");
                //                         break;
                //                 case 7:
                //                         include("views/Tintuc-section.php");
                //                         break;
                //                 case 8:
                //                         include("views/singleblog.php");
                //                         break;
                //                 case 9:
                //                         if (isset($_POST["update"]))
                //                         {
                //                                 include("views/capnhat_monan_oop.php");
                //                         }
                //                         else if (isset($_POST["confirm"]))
                //                         {
                //                                 include("views/form-bill.php");
                //                         }
                //                         else if (isset($_POST["stt-monan-xoa"]))
                //                         {
                //                                 include("views/xoa_giohang_monan.php");
                //                         }
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 10:
                //                         if (isset($_POST["place"]) || isset($_SESSION["tk"]))
                //                                 include("views/danhsachban.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 11:
                //                         if (isset($_POST["danhsach-maban"]))
                //                                 include("views/xacnhandon.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 13:
                //                         if (isset($_POST["xac-nhan-don"]))
                //                                 include("views/them_ban.php");
                //                         else if (isset($_POST["khong-xac-nhan-don"]))
                //                                 header("location: index.php?pid=2");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 14:
                //                         if (isset($_SESSION["STT_ban"]) && $_SESSION["STT_ban"] > 0)
                //                                 include("views/xoa_giohang_ban.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 15:
                //                         if (isset($_POST["yes-xac-nhan"]))
                //                                 header("location: index.php?pid=1");
                //                         else if (isset($_POST["no-xac-nhan"]))
                //                                 include("views/dat_hang_sql.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 17:
                //                         if (isset($_POST["bill-confirm"]))
                //                                 include("views/dat_hang_sql.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 18:
                //                         if (isset($_SESSION["tk"]))
                //                                 include("views/account.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 19:
                //                         if (isset($_POST["order-id"]))
                //                                 include("views/chitiet-donhang.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 20:
                //                         if (isset($_POST["change-pass"]))
                //                                 include("views/change-password-oop.php");
                //                         else
                //                                 header("location: index.php");
                //                         break;
                //                 case 21:
                //                         include("views/lienhe.php");
                //                         break;
                //                 default:
                //                         header("location: index.php");
                //         }
                //  }
                // else if (isset($_GET["tim-kiem-monan"]))
                //         include("views/thucdon.php");
        ?>

        <!-- <?php
                include("views/Footer-section.php");   
        ?> -->

    </div>
</body>
</html>