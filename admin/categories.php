<?php include "includes/admin_header.php"; ?>
    <div id="wrapper">

        <!-- Navigation -->
      <?php include "includes/Admin_navigation.php"; ?>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to admin
                            <small><?php echo $_SESSION['username']; ?></small>
                        </h1>
                        <div class="col-xs-6">
                      <?php insert_categories(); ?>


                        <form action="" method="post">
                            <div class="form-group">
                                <label for="cat-title">Add category</label>
                                <input class="form-control" type="text" name="cat_title">
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="submit" value="Add category">
                            </div>
                        </form>

                       <?php
                       if(isset($_GET['edit'])){
                           $cat_id = $_GET['edit'];
                           include "includes/update_categories.php";
                       }
                       ?>
                       

                        </div>
                        <div class="col-xs-6">
                      
                        <table class="table table-border table-hover">
                            <thead>
                                <tr>
                                    <th>Id </th>
                                    <th>Category</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php  //FIND ALL CATEGORIES QUERY
                                    find_all_categories();
                                ?> 

                                <?php  //delete categories
                                delete_categories();
                                ?>
                            </tbody>
                        </table>

                        </div>                   

                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
<?php include "includes/admin_footer.php"; ?>
