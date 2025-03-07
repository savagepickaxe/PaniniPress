<?php
/* Template name: Réalisations */
get_header();
?>

    <main class="page">

        <?php //var_dump($post); //Ce que reçoit la page?>
        <?php the_content(); ?>
        <div>
            <h2><?php the_title(); ?></h2>
        </div>
        

        <?php
        //Requête et boucle d'affichage des articles avec ACF
        //À mettre dans les pages utilisant les articles personnalisés et adapter****************
        $posts = get_posts(array(
            'posts_per_page' => -1,
            'post_type'	=> 'realisations',
            'post_status' => 'publish',
            'orderby' => 'the_title',
            'order' => 'ASC',
        ));

       // var_dump($posts);

        if(have_posts()){
            //tant qu'il restera des articles
            
            
            foreach ($posts as $post){?>

<?php

$image_info=get_field("photo_1");

    //Si l'image est définie dans ACF
        if($image_info!=null){

            //Utiliser la balise picture pour le redimensionnement de l'image ?>
            <picture>
                 <source media="(min-width: 800px)" srcset="<?php echo $image_info['sizes']["large"];?>">
                 <source media="(min-width: 601px)" srcset="<?php echo $image_info['sizes']["medium"];?>">
                <img src="<?php echo $image_info['sizes']['thumbnail'];?>" alt="<?php echo $image_info["alt"];?>">
            </picture>

<?php }?>
                <article class="article">
                    <header class="article__entete">
                        <h2 class="article__titre">
                            <?php //affiche le lien et le titre de l'article'?>
                            <a class="article__lien" href="<?php the_permalink();?>"><?php the_title()?></a>
                        </h2>
                    </header>
                   

                    <p><?php echo get_field("nom_client")?></p>

                    <p class="article__texte">
                        <?php //affiche le l'extrait de la réalisation
                        the_excerpt();
                        ?>
                    </p>
                </article>
            <?php }

            //réinitialise les données reçues par défaut du gabarit pour afficher le
            //reste des informations de la page, s'il y a lieu
            //wp_reset_postdata();
        }?>

    </main>

<?php get_footer()?>