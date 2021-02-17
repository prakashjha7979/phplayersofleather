<?php
require('top.inc.php');
?>

<?php

if(isset($_GET['delete_slide'])){
    $delete_id = $_GET['delete_slide'];
    $delete_slide = "delete from slider where slider_id='$delete_id'";

    $run_delete = mysqli_query($con,$delete_slide);

    if($run_delete){
        echo "<script>alert('One slide has been deleted')</script>";
        
        echo "<script>window.open('view_slider.php','_self')</script>";
    }
}
?>