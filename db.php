<?php
    $db_name = 'moviestar';
    $db_host = 'localhost';
    $user = 'root';
    $pw = '1234';

    $conn = new PDO("mysql:dbname=$db_name;host=$db_host", $user, $pw);

    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);