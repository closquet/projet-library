<?php

namespace Models;

use \PDO;
use \PDOException;

class Model
{
    protected function connect_db()
    {
        //get db info and check if exists
        $db_config = parse_ini_file(DB_INI_FILE);
        if (!$db_config) {
            $this->errors['connect_db'] = 'db connection info not found';
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
            $this->errors['connect_db_error'] = $exception->getMessage();
            return null;
        }
    }


    protected function sql_request($sql_prepare, $sql_param, $fetch_mode)
    {
        //create a connection to the db and check it
        if (!$dbh = $this->connect_db()){
            return null;
        }

        //execute the request and return result if $fetch_mode exists
        try{
            if (!$sth = $dbh->prepare($sql_prepare)){
                $this->errors['sql_request'] = 'sql prepare error';
                return null;
            }
            $sth->execute($sql_param);
            if ($fetch_mode){
                return $sth->$fetch_mode();
            }
            $this->last_insert_id = $dbh->lastInsertId();
        }catch (PDOException $exception){
            $this->errors['sql_request'] = $exception->getMessage();
        }
    }
    
    
    protected function insert($tab, $col, $val){
        $val_part = explode(', ', $val);
        $i=1;
        $prepare_val = '';
        $sql_param = [];
        foreach ($val_part as $item){
            if($i > 1){
                $prepare_val .= ', ' . (':val' . $i++);
            }else{
                $prepare_val .= (':val' . $i++);
            }
            $sql_param[':val' . ($i-1)] = $item;
        }
        
        
        
        $sql_prepare = sprintf('INSERT INTO %s(%s) VALUES(%s)', $tab, $col, $prepare_val);
        $fetch_mode = false;
        $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }



}