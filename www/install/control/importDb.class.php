<?php
use Daveismyname\SqlImport\Import;

class importDb
{
    public static function exec($filename,$hostdb){
        $username = 'form_exemplo';
        $password = '123456';
        $database = 'form_exemplo';
        $dropTables = false;
        new Import($filename, $username, $password, $database, $hostdb, $dropTables);
    }
}