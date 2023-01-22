<html lang="en">
<head>
  <title>E-Com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="/css/pg_css.css">

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>    
      </button>
      <a class="navbar-brand" href="http://localhost/E-Comm/">ShowRoom</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <form class='navbar-form navbar-left' action='cat.php' method='post'>
          <input type='hidden' value='all' class='form-control' placeholder='Cat_item' name='cat_item'>
            <li><button type='submit' name='submit' href='*'>All</button></li>
            </form>
      <?php
        $select_all_cat = "SELECT * FROM category";
        $head_result = mysqli_query($conn, $select_all_cat);

        while($row = mysqli_fetch_assoc($head_result)){
          $cat_tit = $row['cat_slug'];

          echo "
          <form class='navbar-form navbar-left' action='cat.php' method='post'>
          <input type='hidden' value='{$cat_tit}' class='form-control' placeholder='Cat_item' name='cat_item'>
            <li><button type='submit' name='submit' href='*'>{$cat_tit}</button></li>
            </form>
          ";
        }
        ?>
      </ul>
      <ul class="nav navbar-nav navbar-right">

                <form class="navbar-form navbar-left" action="search.php" method="post">
                  <div class="input-group">
                    <input type="text" value="" class="form-control" placeholder="Search" name="search">
                    <div class="input-group-btn">
                      <button class="btn btn-default" type="submit" name="submit">
                        <i class="glyphicon glyphicon-search"></i>
                      </button>
                    </div>
                  </div>
                </form>

        <li><a href="test.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="test.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
