<?php
    require_once(__DIR__ . "/libs/Database.php");
    require_once(__DIR__ . "/libs/modelo.php");

    include('class/Aprendiz.php');

    $database = new Database();
    $connection = $database->getConnection();
    $aprendiz = new Aprendiz($connection);

    // $aprendiz->store([
    //     'first_name'=>'Juan',
    //     'last_name'=>'Carreño',
    //     'email'=>'jhon@gmail.com',
    //     'phone'=>'3160410637',
    //     'dni'=>1023698547,
    // ]);

    // $result=$aprendiz->getAll();
    // $result=$aprendiz->getById(1);
    // echo "<pre>";
    // print_r($result);
    // echo "</pre>";


    $aprendiz->update(1,[
        'first_name'=>'jhon',
        'last_name'=>'Foronda',
        'address' => 'sena giron',
        'user_account' => 2696521
    ]);

?>