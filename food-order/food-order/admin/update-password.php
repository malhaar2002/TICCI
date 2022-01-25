<?php include("partials/menu.php") ?>

<div class="main-content">
    <div class="wrapper">
        <h1>Change Password</h1>
        <br><br>

        <?php
            if (isset($_GET['id'])) {
                $id = $_GET['id'];
            }
        ?>

        <form action="" method="POST">
            <table class="tbl-30">
                <tr>
                    <td>Current Password: </td>
                    <td><input type="password" name="current-password" placeholder="current password"></td>
                </tr>

                <tr>
                    <td>New Password: </td>
                    <td><input type="password" name="new-password" placeholder="new password"></td>
                </tr>

                <tr>
                    <td>Confirm Password: </td>
                    <td><input type="password" name="confirm-password" placeholder="confirm password"></td>
                </tr>

                <tr>
                    <td colspan=2>
                        <input type="hidden" name="id" value="<?php echo $id; ?>">
                        <input type="submit" value="Change Password" name="submit" class="btn-secondary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<?php include("partials/footer.php") ?>