<?php
function university_files(){
    wp_enqueue_script('university_main_script', get_theme_file_uri('//js/scripts-bundled.js'), NULL, '1.0', true );
    wp_enqueue_style('university_font','https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('university_fontawesome','https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('university_main_css',get_stylesheet_uri());
}
add_action('wp_enqueue_scripts','university_files');


function university_features(){
    /* To Use Dynamic Menu
    register_nav_menu('headerNav', 'Header Nav Location');
    register_nav_menu('footerNavOne','Footer Nav One');
    register_nav_menu('footerNavTwo','Footer Nav Two');
    */
    add_theme_support('title-tag');
}

add_action('after_setup_theme','university_features');



?>