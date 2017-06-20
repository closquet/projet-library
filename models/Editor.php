<?php

namespace Models;


class Editor extends Model
{
    public function get_an_editor($id)
    {
        $sql_prepare = 'SELECT *  FROM ec_library.editors
                        WHERE ec_library.editors.id = :id';
        $sql_param = [':id' => $id];
        $fetch_mode = 'fetch';
        
        return $this->sql_request($sql_prepare, $sql_param, $fetch_mode);
    }
}