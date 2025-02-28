
<?php
/* Template name: Contact */

get_header(); //Appel de l'inclusion d'entête de page
echo "page-contact.php";
?>

    <main class="page">

        <?php //var_dump($post); //Ce que reçoit la page?>

        <div>
            <h2><?php the_title() //fonction native WP?></h2>
            <h2><?php //echo $post->post_title  //Façon alternative en utilisant la variable $post?></h2>
        </div>
        <p>
           <?php  the_content() ?>
           <?php  //echo $post->post_content; ?>
        </p>

    </main>

<?php get_footer()?>



<?php
//initialise la fonctionnalité de gestion des menus pour ce thème
if( function_exists("register_nav_menus")){
    register_nav_menus(
        array(
            "principal" => "Menu principal"
        )
    );
}

?>


<?php if(has_nav_menu("principal")){ ?>
    <nav class="navigation">
        <?php wp_nav_menu(array("theme_location"=>"principal"));?>
    </nav>   
<?php } ?>
