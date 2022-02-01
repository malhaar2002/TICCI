<?php include("partials/header.php"); ?>

  <main id="main">
      <br><br>
    <section class="breadcrumbs">

      <?php
        if (isset($_SESSION['registration-success'])) {
          echo $_SESSION['registration-success'];
          unset($_SESSION['registration-success']);
        }     
      ?>

      <div class="container">

        <div class="d-flex justify-content-between login-parent">

          <div class="login-form">
              <form action="" method="POST">

                <input type="text" name="username" placeholder="Username" class="login-inputs">
                <br><br>
                
                <input type="password" name="password" placeholder="Password" class="login-inputs">
                <br><br>

                <input type="submit" value="login" class="book-a-table-btn submit-button">
                <br><br><br>

                <p class="login-subtext">Don't have an account? <a href="sign-up.php">Sign Up </a>now</p>
                <p class="login-subtext"><a href="">Forgot Password?</a></p>

              </form>
          </div>

          <img src="assets/img/undraw_login.svg" alt="" width="30%" class="login_graphic">

        </div>

      </div>
    </section>

    <section class="inner-page">
      <div class="container">
      </div>
    </section>

  </main><!-- End #main -->

<?php include("partials/footer.php"); ?>