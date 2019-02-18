<?php
    require('database.php');

    //Create Query
    $query = 'SELECT * FROM shouts ORDER BY id DESC';

    //Get Results
    $results = mysqli_query($db_connect, $query);

    //Fetch Shouts
    $shouts = mysqli_fetch_all($results, MYSQLI_ASSOC);

    //Free Result
    mysqli_free_result($results);

    //Close Connection
    mysqli_close($db_connect);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://bootswatch.com/4/united/bootstrap.min.css">
    <title>Shout It</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 my-5" style="margin:auto;">
                <div class="card p-3">
                    <h3 class="text-center">Shout Out</h3>
                    <ul class="list-group" style="max-height:350px; overflow-y:scroll;">
                        <?php foreach($shouts as $shout):?>
                            <li class="list-group-item">
                                <strong><?php echo $shout['users'];?></strong> : <?php echo $shout['message']; ?> 
                            </li>
                        <?php endforeach;?>
                    </ul>
                    <?php if(isset($_GET['error'])) : ?>
                        <div class="alert alert-danger mt-2 mb-2">
                            <?php echo $_GET['error'];?>
                        </div>
                    <?php endif; ?>
                    <form method = "POST" action = "addshout.php" >
                        <div class="form-group mt-3">
                            <input type="text" name="user" class="form-control my-2" placeholder="Enter Your Name...">
                            <input type="text" name="message" class="form-control" placeholder="Enter Your Message...">
                            <input type="submit" name="submit" value="Shout Out" class="btn btn-primary my-2">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>