<?php
/* Template name: Équipe */
get_header();
?>

    <main class="equipe_page">
 
  
        <?php //var_dump($post); //Ce que reçoit la page?>
        <div>
           <h2 class="equipe__title"><?php the_title(); ?></h2>
        </div>
        <?php the_content(); ?>

        <?php
        //Requête et boucle d'affichage des articles avec ACF
        //À mettre dans les pages utilisant les articles personnalisés et adapter****************
        $posts = get_posts(array(
            'posts_per_page' => -1,
            'post_type'	=> 'equipe',
            'post_status' => 'publish',
            'orderby' => 'the_title',
            'order' => 'ASC',
        ));

       // var_dump($posts);

        if(have_posts()){
            //tant qu'il restera des articles
            foreach ($posts as $post){?>
                <article class="equipe">
                <?php

$image_info = get_field("photo_1_equipe");



//Si l'image est définie dans ACF
if($image_info!=null){

    //Utiliser la balise picture pour le redimensionnement de l'image ?>
    <picture class="equipe__image">
        <source media="(min-width: 800px)" srcset="<?php echo $image_info['sizes']["large"];?>">
        <source media="(min-width: 601px)" srcset="<?php echo $image_info['sizes']["medium"];?>">
        <img src="<?php echo $image_info['sizes']['thumbnail'];?>" alt="<?php echo $image_info["alt"];?>">
    </picture>

<?php }?>
                  <div class="equipe__infos">
                     <header class="equipe__entete">
                        <h2 class="equipe__titre">
                            <?php //affiche le lien et le titre de l'article'?>
                            <a class="equipe__lien" href="<?php the_permalink();?>"><?php the_title()?></a>
                        </h2>
                    </header>
                 

                    <p class="equipe_titre_du_membre"><?php echo get_field("titre_du_membre")?></p>
                    <button class="equipe_ensavoirplus__bouton"> <a href="<?php the_permalink();?>"> En savoir plus <svg class="svg__fleche" width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd"><path d="M21.883 12l-7.527 6.235.644.765 9-7.521-9-7.479-.645.764 7.529 6.236h-21.884v1h21.883z"/></svg></a></button>
                  <div class="equipe__texte">
                    <p>
                     <?php //affiche le l'extrait de la réalisation
                        the_excerpt();
                        ?>
                    </p>
                 </div>
                    </div>
                </article>
            <?php }

            //réinitialise les données reçues par défaut du gabarit pour afficher le
            //reste des informations de la page, s'il y a lieu
            //wp_reset_postdata();
        }?>
    </main>

<?php get_footer()?>