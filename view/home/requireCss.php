<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

global $css;

if ($nivel == 1){
    $menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";

    switch ($menuop) {

        case 'home':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'create':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'agendamento':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'noticias':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
    }}elseif ($nivel == 2) { 

    $menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";
    switch ($menuop) {

        case 'home':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'create':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'agendamento':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'noticias':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
            
    }} else {

    $menuop = (isset($_GET["menuop"])) ? $_GET["menuop"] : "home";
    switch ($menuop) {

        case 'home':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'agendamento':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'horario':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
        case 'noticias':
            $css = ('href="../../public/css/styleTela1.css"');
            break;
    }
}
?>