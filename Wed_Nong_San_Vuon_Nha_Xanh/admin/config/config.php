<?php
    // local
    $mysqli = new mysqli("localhost","root","","Wed_Nong_San_Vuon_Nha_Xanh");

    //heroku
    // $mysqli = new mysqli("en1ehf30yom7txe7.cbetxkdyhwsb.us-east-1.rds.amazonaws.com","dffzsfu69gr3zs1m","wllffodkjt06taig","idf3gr7pfe8qrnts");

    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}
