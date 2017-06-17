<?php

namespace Models;


class Author extends Model
{
    public function get_an_author($id)
    {
        $sql_prepare = 'SELECT *  FROM ec_library.authors
                        WHERE ec_library.authors.id = :id';
        $sql_param = [':id' => $id];
        $fetch_mode = 'fetch';
        
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
}