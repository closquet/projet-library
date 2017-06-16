<?php

namespace Models;

use \PDO;
use \PDOException;

class Model
{
    protected function connect_db(){
        //get db info and check if exists
        $db_config = parse_ini_file(DB_INI_FILE);
        if (!$db_config) {
            $this->error['connect_db'] = 'no db connection info found';
            return null;
        }
        $db_host = $db_config['DB_HOST'];
        $db_user = $db_config['DB_USER'];
        $db_pass = $db_config['DB_PASS'];
        $db_name = $db_config['DB_NAME'];

        //use db info to create the dsn
        $dsn = sprintf('mysql:dbname=%s;host=%s;charset=utf8', $db_name, $db_host);

        //connect to the db
        try{
            return new PDO($dsn, $db_user, $db_pass,
                    [
                        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ
                    ]
                );
        }catch (PDOException $exception){
            $this->error['connect_db_error'] = $exception->getMessage();
            return null;
        }
    }


    protected function sql_request($sql_prepare, $sql_param, $fetch_mode){
        //create a connection to the db and check it
        if (!$dbh = $this->connect_db()){
            return null;
        }

        //execute the request and return result if $fetch_mode exists
        try{
            if (!$sth = $dbh->prepare($sql_prepare)){
                $this->error['sql_request'] = 'sql prepare error';
                return null;
            }
            $sth->execute($sql_param);
            if ($fetch_mode){
                return $sth->$fetch_mode();
            }
            $this->last_insert_id = $dbh->lastInsertId();
        }catch (PDOException $exception){
            $this->error['sql_request'] = $exception->getMessage();
        }
    }


    
}