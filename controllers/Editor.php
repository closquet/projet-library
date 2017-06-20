<?php

namespace Controllers;

use Models\Editor as Editor_model;
use Models\Book as Book_model;

class Editor extends Controller
{
    public function __construct()
    {
        $this->editor_model = new Editor_model();
        $this->book_model = new Book_model();
    }
    
    public function focus()
    {
        $editor = $this->editor_model->get_an_editor($_REQUEST['editor_id']);
        $books = $this->book_model->get_books_of_an_editor($_REQUEST['editor_id']);
        $errors = $this->editor_model->errors ?? false;
        if ($errors){
            return ['view' => 'views/errors.php', 'errors' => $errors];
        }
        return [ 'view' => 'views/focusEditor.php', 'books' => $books, 'editor' => $editor ];
    }
}