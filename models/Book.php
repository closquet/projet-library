<?php

namespace Models;


class Book extends Model
{
    public function get_genres()
    {
        $sql_prepare = 'SELECT * FROM ec_library.genres';
        $sql_param = [];
        $fetch_mode = 'fetchAll';

        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }


    public function get_books($title, $author, $editor, $isbn, $genre)
    {
        $sql_prepare = 'SELECT *, ec_library.books.id AS book_id FROM ec_library.books
                        JOIN ec_library.book_author ON ec_library.book_author.book_id = ec_library.books.id
                        JOIN ec_library.authors ON ec_library.authors.id = ec_library.book_author.author_id
                        JOIN ec_library.editors ON ec_library.editors.id = ec_library.books.editor_id
                        JOIN ec_library.genres ON ec_library.genres.id = ec_library.books.genre_id
                        JOIN ec_library.languages ON ec_library.languages.id = ec_library.books.language_id
                        WHERE title LIKE :title
                        AND author_name LIKE :author
                        AND editor_name LIKE :editor
                        AND isbn LIKE :isbn
                        AND genre_name LIKE :genre
                        
                        ';
        $sql_param = [ ':title' => '%' . $title . '%', ':author' => '%' . $author . '%', ':editor' => '%' . $editor . '%', ':isbn' => '%' . $isbn . '%', ':genre' => '%' . $genre . '%' ];
        $fetch_mode = 'fetchAll';

        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
    
    
    public function get_a_book($id)
    {
        $sql_prepare = 'SELECT *, ec_library.books.id AS book_id FROM ec_library.books
                        JOIN ec_library.book_author ON ec_library.book_author.book_id = ec_library.books.id
                        JOIN ec_library.authors ON ec_library.authors.id = ec_library.book_author.author_id
                        JOIN ec_library.editors ON ec_library.editors.id = ec_library.books.editor_id
                        JOIN ec_library.genres ON ec_library.genres.id = ec_library.books.genre_id
                        JOIN ec_library.languages ON ec_library.languages.id = ec_library.books.language_id
                        JOIN ec_library.locations ON ec_library.locations.id = ec_library.books.location_id
                        WHERE ec_library.books.id = :id';
        $sql_param = [':id' => $id];
        $fetch_mode = 'fetch';
    
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
    
    
    public function get_coms_of_a_book($id)
    {
        $sql_prepare = 'SELECT * FROM ec_library.book_rating
                        JOIN ec_library.users ON ec_library.users.id = ec_library.book_rating.user_id
                        WHERE ec_library.book_rating.book_id = :id';
        $sql_param = [':id' => $id];
        $fetch_mode = 'fetchAll';
    
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
}