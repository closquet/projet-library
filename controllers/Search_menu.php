<?php

namespace Controllers;

use Models\Book as Book_model;


class Search_menu extends Controller
{
    public function __construct()
    {
        $this->book_model = new Book_model();
    }
    
    
    public function display()
    {
        $genres = $this->book_model->get_genres();
        $errors = $this->book_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        return ['view' => 'views/searchMenu.php', 'genres' => $genres];
    }
}