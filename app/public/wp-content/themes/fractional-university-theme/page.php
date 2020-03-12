<?php 
get_header();
while(have_posts())
{
    the_post();
    ?>
  <div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg'); ?>);"></div>
    <div class="page-banner__content container container--narrow">
      <h1 class="page-banner__title"><?php the_title(); ?></h1>
      <div class="page-banner__intro">
        <p>Dont Forget To Place Dynamic Title</p>
      </div>
    </div>  
  </div>

   <div class="container container--narrow page-section">
   <?php 
    $isChild = wp_get_post_parent_id(get_the_ID());
    if($isChild){ ?>

    <div class="metabox metabox--position-up metabox--with-home-link">
        <p><a class="metabox__blog-home-link" href="<?php echo get_permalink($isChild); ?>"><i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($isChild); ?> </a>
        <span class="metabox__main"><?php the_title(); ?></p>
    </div>

    <?php }
   ?>
    

   
    <?php
    $isParent = get_pages(array(
      'child_of' => get_the_ID()
    ));
    if ($isChild or $isParent) { ?>
    <div class="page-links">
      <h2 class="page-links__title"><a href="<?php echo get_permalink($isChild) ?>"><?php echo get_the_title($isChild) ?></a></h2>
      <ul class="min-list">
        <?php
        if ($isChild) {
          $checkForChildren = $isChild;
        } else {
          $checkForChildren = get_the_ID();
        }
        wp_list_pages(array(
          'title_li' => NULL,
          'child_of' =>$checkForChildren
        )) ?>
      </ul>
    </div>
        <?php } ?>



    <div class="generic-content">
        <?php the_content(); ?>
    </div>

  </div>


    <?php
}
get_footer();
?>