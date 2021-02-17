<?php 
require('top.inc.php');

?>
<!-- row start  -->
<div class="row">
    <div class="col-lg-12">

        <ol class="breadcrumb">

            <li class="active">

                <i class="fa fa-dashboard"></i> Dashboard/View Slide

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
                    <i class="fa fa-money fa-fw"></i>view slide
                </h3>

            </div>

            <div class="panel-body">

                <?php 

    $get_slides = "select * from slider";
    $run_slides = mysqli_query($con,$get_slides);
    while($row_slides=mysqli_fetch_array($run_slides)){
        $slide_id = $row_slides['id'];
        $slide_name = $row_slides['slider_name'];
        $slide_image = $row_slides['slider_image'];
     
    
    ?>

    <div class="col-lg-3 col-md-3">

    <div class="panel panel-primary">

    <div class="panel-heading">

    <h3 class="panel-title" align="center">
    <?php echo $slide_name; ?>
    </h3>
    
    </div>

    <div class="panel-body">

    <img src="slider_images/<?php echo $slide_image; ?>" class="img-responsive">
    
    </div>

    <div class="panel-footer">

    <center>

    <a href='delete_slide.php' class="pull-left">Delete</a>

    <a href='edit_slide.php' class="pull-right">Edit</a>

    <div class="clearfix">
    
    </div>

    </center>
    
    </div>
    
    </div>
    
    </div>

<?php } ?>
            </div>

        </div>

    </div>

</div>


<?php
require('footer.inc.php');
?>