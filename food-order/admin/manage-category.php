<?php include("partials/menu.php"); ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Manage Category</h1>
        <br><br>

        <?php
            if (isset($_SESSION['add'])) {
                echo $_SESSION['add'];
                unset ($_SESSION['add']);
            }
        ?>

        <br><br>

        <!-- Button to add category -->
        <a href="<?php echo SITEURL?>admin/add-category.php" class="btn-primary">Add Category</a>
        <br><br><br>

        <table class="tbl-full">
            <tr>
                <th>S.No</th>
                <th>Title</th>
                <th>Image</th>
                <th>Featured</th>
                <th>Active</th>
                <th>Actions</th>
            </tr>

            <?php
                // Query to get all categories from db
                $sql = "SELECT * FROM tbl_category";

                // Execute the query
                $res = mysqli_query($conn, $sql);

                // Count the rows
                $count = mysqli_num_rows($res);

                // Create serial no variable
                $sn = 1;

                // Check whether we have data in db
                if ($count > 0) {
                    // We got data
                    while ($row = mysqli_fetch_assoc($res)) {
                        $id = $row['id'];
                        $title = $row['title'];
                        $image_name = $row['image_name'];
                        $featured = $row['featured'];
                        $active = $row['active'];

                        ?>

                        <tr>
                            <td><?php echo $sn++ ?></td>
                            <td><?php echo $title; ?></td>

                            <td>
                                <?php
                                    // Check whether image name is available or not
                                    if ($image_name != "") {
                                        # Display the image
                                        ?>
                                        <img src="<?php echo SITEURL; ?>/images/category/<?php echo $image_name; ?>" alt="" width=100px>
                                        <?php
                                    } else {
                                        // Display the message
                                        echo "<div class='error'>No Image Added</div>";
                                    }
                                ?>
                            </td>

                            <td><?php echo $featured ?></td>
                            <td><?php echo $active ?></td>
                            <td>
                                <a href="#" class="btn-secondary">Update Category</a>
                                <a href="#" class="btn-danger">Delete Category</a>
                            </td>
                        </tr>

                        <?php

                    }

                } else {
                    // We don't got data
                    // Display the message inside table
                    ?>
                    <tr>
                        <td colspan=6><div class="error">No Category Added</div></td>
                    </tr>
                    <?php
                }
            ?>

        </table>

    </div>
</div>

<?php include("partials/footer.php"); ?>