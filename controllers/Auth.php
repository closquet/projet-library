<?php

namespace Controllers;

use Models\Auth as Auth_model;

class Auth extends Controller
{
    public function __construct()
    {
        $this->auth_model = new Auth_model();
    }
    
    
    public function get_login()
    {
        return ['view' => 'views/getLogin.php'];
    }
    
    
    
}