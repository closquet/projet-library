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
        $_SESSION['previous'] = $_SERVER['HTTP_REFERER'];
        return ['view' => 'views/getLogin.php'];
    }
    
    
    public function post_login()
    {
        $_SESSION['user'] = null;
        $user_temp = $this->auth_model->get_user($_REQUEST['email'], $_REQUEST['password']);
        $errors = $this->auth_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        if ($user_temp){
            $_SESSION['user'] = $user_temp;
            header('Location: ' . $_SESSION['previous']);
            
            exit;
        }
        
        return ['view' => 'views/getLogin.php'];
    }
    
    
    public function get_logout(){
        $_SESSION = array();
        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }
        session_destroy();
        header('location: index.php');
    }
    
    
}