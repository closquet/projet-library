<?php

namespace Models;


class Comment extends Model
{
    public function insert_comment(){
        $table = 'book_rating';
        $col = 'book_id, user_id, comment';
        $values = $_REQUEST['book_id'] . ', ' . $_SESSION['user']->id . ', ' . $_REQUEST['comment'];
        $this->insert($table, $col, $values);
    }
}