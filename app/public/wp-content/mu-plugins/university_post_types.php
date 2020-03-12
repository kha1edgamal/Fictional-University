<?php 
function university_events(){
    register_post_type('events',array(
        'has_archive' => true,
        'public' => true,
        'labels' => array(
            'name' => 'Events',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events'
        ),
        'menu_icon' => 'dashicons-calendar-alt'
    ));
}
add_action('init','university_events');