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
    
    
    public function add_author()
    {
        $name = $_REQUEST['name'];
        $birth = $_REQUEST['birthdate'];
        $death = $_REQUEST['deathdate'];
        $bio = $_REQUEST['bio'];
            
        $sql_prepare = 'INSERT INTO ec_library.authors (author_name, datebirth, datedeath, bio) VALUES (:name, :birth, :death, :bio);
';
        $sql_param = [':name' => $name, ':birth' => $birth, ':death' => $death, ':bio' => $bio, ];
        $fetch_mode = false;
    
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
}