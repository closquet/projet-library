<?php

namespace Controllers;

use Models\Book as Book_model;

class Book extends Controller
{
    public function __construct()
    {
        $this->book_model = new Book_model();
    }


    public function index()
    {
        $books = $this->book_model->get_books($_REQUEST['title'], $_REQUEST['author'], $_REQUEST['editor'], $_REQUEST['isbn'], $_REQUEST['genre']);
        $genres = $this->book_model->get_genres();
        $errors = $this->book_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        return ['view' => 'views/searchMenu.php', 'genres' => $genres, 'books' => $books];
    }
    
    
    public function focus()
    {
        $book = $this->book_model->get_a_book($_REQUEST['id']);
        $coms = $this->book_model->get_coms_of_a_book($_REQUEST['id']);
        $errors = $this->book_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        return ['view' => 'views/focusBook.php', 'book' => $book, 'coms' => $coms];
    }
}