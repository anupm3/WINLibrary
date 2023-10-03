<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/aboutus.css">
    <?php require_once 'include/head-block.php' ?>
</head>
<body>
    <div class="main-content">
        <div class="inner-main">
            <?php require_once 'include/header.php' ?>
            <div class="holder">
                <div class="text-wrap">
                    <h1><span class="project-title">About Us</span></h1>
                </div>
                <p>At Win-Library, we believe in the power of knowledge, exploration, and community. Our library aims to be a cornerstone of this vibrant community, providing a rich resource for learning, discovery, and connection.</p>
                <section id="our-team">
                    <h2>Our Team</h2>
                    <div class="gallery-block">

                    <?php
                    // Database connection
                    require_once "include/db/config.php";

                    // Retrieve team member information and photos from the database
                    $sql = "SELECT * FROM tblTeam"; 
                    $result = mysqli_query($conn, $sql);

                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo '<div class="team-member">';
                            echo '<div class="img-holder"><img src="images/' . $row['photoURL'] . '.jpg" alt="' . $row['memberName'] . '"></div>';
                            echo '<h3><a href="' . $row['webURL'] . '" target="_blank">' . $row['memberName'] . '</a></h3>';
                            echo '<p>'. $row['role'] .'</p>';
                            echo '</div>';
                        }
                    } else {
                        echo 'No team members found.';
                    }
                    

                    mysqli_close($conn);
                    ?>
                    </div>
                </section>
            </div>
        </div>
        <?php require_once 'include/footer.php' ?>
    </div>
</body>
</html>
