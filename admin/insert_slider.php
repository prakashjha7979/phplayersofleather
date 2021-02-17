<?php 
require('top.inc.php');

?>
<!-- row start  -->
<div class="row">
    <div class="col-lg-12">

        <ol class="breadcrumb">

            <li class="active">

                <i class="fa fa-dashboard"></i> Dashboard/Insert Slide

            </li>

        </ol>

    </div>

</div>
<!-- 2nd Row start -->
<div class="row">

    <div class="col-lg-12">

        <div class="panel panel default">

            <div class="panel-heading">

                <h3 class="panel-title">
                    <i class="fa fa-money fa-fw"></i>Insert slide
                </h3>

            </div>

            <div class="panel-body">

                <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">

                        <label class="col-md-3 control-label">Slide Name:</label>

                        <div class="col-md-6">

                            <input type="text" name="slide_name" class="form-control">
                        </div>
                    </div> <!-- form group ends -->

                    <div class="form-group">
                        <label class="col-md-3 control-label">Slide url:</label>

                        <div class="col-md-6">

                            <input type="text" name="slide_url" class="form-control">
                        </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label">Slide Image:</label>

                        <div class="col-md-6">

                            <input type="file" name="slide_image" class="form-control">
                        </div>
                    </div><!-- form group ends -->

                    </div><!-- form group ends -->

                    <div class="form-group">

                        <label class="col-md-3 control-label"></label>

                        <div class="col-md-6">

                            <input type="Submit" name="Submit" value="submit Now" class="btn btn-primary form-control">

                        </div>
                    </div>
                </form>
            </div>

        </div>

    </div>

</div>

<?php 

if(isset($_POST['submit'])){
$slider_name = $_POST['slider_name'];
$slider_url = $_POST['slider_url'];
$slide_image = $_FILES['slider_image']['name'];
$temp_name = $_FILES['slider_image']['tmp_name'];

$view_slides = "select * from slider";
$view_run_slides = mysqli_query($con,$view_slides);
$count = mysqli_num_rows($view_run_slides);

if($count<2){
    move_uploaded_file($temp_name,"slider_images/$slide_image");

    $insert_slide = "insert into slider (slider_name,slider_image,slider_url) values('$slider_name','$slider_image','$slider_url')";

    $run_slide = mysqli_query($con,$insert_slide);

    echo "<script>alert('new slide has been Inserted')</script>";

    echo "<script>
    window.open('view_slider.php','_self')</script>";
}
else{
    echo "<script>alert('you have already inserted 2 slides')</script>";
}
}
?>
<?php
require('footer.inc.php');
?>