<?php

namespace Controllers;

use Models\Author as Author_model;
use Models\Book as Book_model;

class Author extends Controller
{
    public function __construct()
    {
        $this->author_model = new Author_model();
        $this->book_model = new Book_model();
    }
    
    public function focus()
    {
        $author = $this->author_model->get_an_author($_REQUEST['author_id']);
        $books = $this->book_model->get_books_of_an_author($_REQUEST['author_id']);
        $errors = $this->author_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        return [ 'view' => 'views/focusAuthor.php', 'books' => $books, 'author' => $author ];
    }
}