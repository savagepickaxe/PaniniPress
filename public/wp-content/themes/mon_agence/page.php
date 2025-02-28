<?php
get_header();
?>

    <main class="page">

        <?php //var_dump($post); //Ce que reçoit la page?>
        <div>
            <h2><?php the_title(); ?></h2>
        </div>
        <?php the_content(); ?>

    </main>

<?php get_footer()?>