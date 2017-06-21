<?php

namespace Controllers;

use Models\Comment as Comment_model;
use Models\Book as Book_model;

class Comment extends Controller
{
    public function __construct()
    {
        $this->comment_model = new Comment_model();
        $this->book_model = new Book_model();
    }
    
    
    public function post_comment()
    {
        
        $this->check_session();
        //$book = $this->book_model->get_a_book($_REQUEST['book_id']);
        //$coms = $this->book_model->get_coms_of_a_book($_REQUEST['book_id']);
        $this->comment_model->insert_comment();
        $errors = $this->comment_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        header('Location: ' . $_SESSION['previous']);
        exit;
        //return ['view' => 'views/focusBook.php', 'book' => $book, 'coms' => $coms];
        
    }
}