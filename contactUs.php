<?php 
    session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<?php require_once 'include/head-block.php' ?>
</head>
<body>
	<div class="main-content">
		<div class="inner-main">
			<?php require_once 'include/header.php' ?>
      <div class="holder">
        <section id="contact-info">
            <h2><span class="project-title">Contact Us</span></h2>
            <p><strong>Simranpreet Kaur : <a href="mailto:984708@win.edu.au">984708@win.edu.au</a></strong></p>
            <p><strong>Anup Maharjan : <a href="mailto:984796@win.edu.au">984796@win.edu.au</a></strong></p>
            <p><strong>Aishwariya Reddy : <a href="mailto:983785@win.edu.au">983785@win.edu.au</a></strong></p>
            <p><strong>Raj Kharel : <a href="mailto:984949@win.edu.au">984949@win.edu.au</a></strong></p>

        </section>
        <p>Please take a moment to fill out our 'Contact Us' form below. We value your feedback and inquiries, and we'll get back to you as soon as possible.</p>

        <form method="POST" action="include/db/contact.inc.php">
            <label for="id">Student ID:</label>
            <input type="number" name="id" id="id"><br><br>

            <label for="name">Name:</label>
            <input type="text" name="name" id="name"><br><br>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email"><br><br>

            <label for="message">Message:</label>
            <textarea name="message" id="message" rows="7"></textarea><br><br><br>

            <input type="submit" value="Submit" name="submit">
        </form>
        <?php
          if(isset($_REQUEST["error"])) {
            echo "<div class='error'>";
            if($_REQUEST["error"] == "emptyinput") {
              echo "<p>Fill in all fields!</p>";
            }
            elseif($_REQUEST["error"] == "invalidUsername") {
              echo "<p>Choose a proper username!</p>";
            }
            elseif($_REQUEST["error"] == "invalidEmail") {
              echo "<p>Choose a proper email!</p>";
            }
            elseif($_REQUEST["error"] == "stmtfailed") {
              echo "<p>Oops! Something went wront, try again!!</p>";
            }
            
            elseif($_REQUEST["error"] == "none") {
              echo "<h2>Thankyou for contacting us.</h2>";
            }
            echo "</div>";
          }
        ?>
      </div>
		</div>
	  <?php require_once 'include/footer.php' ?>
	</div>
</body>
</html>