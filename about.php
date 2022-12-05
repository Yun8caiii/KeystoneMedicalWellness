<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DocOffice</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet" />
  <link href="./style.css" rel="stylesheet" />
</head>

<body>
  <div class="about-section-contain">
    <div class="about-section">
      <h1>About Us Page</h1>
      <p>Some text about who we are and what we do.</p>
      <p>Resize the browser window to see that this page is responsive by the way.</p>
    </div>
  </div>
  <h2 style="text-align:center">Our Team</h2>
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="/w3images/team1.jpg" alt="Stefan" style="width:100%">
        <div class="container">
          <h2>Stefan Lam</h2>
          <p class="title">Software Developer</p>
          <p>Some text that describes me lorem ipsum ipsum lorem.</p>
          <p>stefan.lam491@csu.fullerton.edu</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="column">
      <div class="card">
        <img src="/w3images/team2.jpg" alt="Jacky" style="width:100%">
        <div class="container">
          <h2>Jacky Yun Cai</h2>
          <p class="title">Software Developer</p>
          <p>njeknjkfwnfkjwefnjwkfnkwejf</p>
          <p>yun8caiii@csu.fullerton.edu</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>

    <div class="column">
      <div class="card">
        <img src="/w3images/team3.jpg" alt="Ashley" style="width:100%">
        <div class="container">
          <h2>Ashley Kueva</h2>
          <p class="title">Software Developer</p>
          <p>write some shit</p>
          <p>ashleykuewa@csu.fullerton.edu</p>
          <p><button class="button">Contact</button></p>
        </div>
      </div>
    </div>
  </div>

  <left>
    <?PHP
    include 'index.php';
    include 'connection.php';
    $link = mysqli_connect('127.0.0.1', 'root', 'Potato123');

    if (!$link) {
      die("Cannot pull up all doctor information! " . mysqli_error());
    } else {
      echo "This is what we do at our office! <br>";
    }

    ?>
  </left>
</body>

</html>