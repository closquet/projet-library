<?php

namespace Models;


class Auth extends Model
{
    public function get_user($email, $password)
    {
        $sql_prepare = 'SELECT * FROM ec_library.users
                        WHERE ec_library.users.email = :email
                        AND ec_library.users.password = :password LIMIT 1';
        $sql_param = [':email' => $email, ':password' => sha1($password)];
        $fetch_mode = 'fetch';
    
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
}