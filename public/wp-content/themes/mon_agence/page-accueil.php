<?php  /* Template name: Accueil */ ?> 
<?php get_header(); ?>

<main class="page">
    <section class="accueil__image">
    <img src="<?php echo get_field("imageaccueil")['sizes']['thumbnail']; ?>" alt="Image Accueil">
</section>
     <section class="nouvelles">
    <?php
       //Requête et boucle d'affichage des articles avec ACF
        //À mettre dans les pages utilisant les articles personnalisés et adapter****************
        $posts = get_posts(array(
            'posts_per_page' => -1,
            'post_type'	=> 'post',
            'post_status' => 'publish',
            'orderby' => 'the_title',
            'order' => 'DESC',
        ));
       
        if(have_posts()){
              foreach ($posts as $post){?>
              <?php  the_post();?>
                <article class="nouvelles__article">
                    <div class="nouvelles__article__textes">
                    <header class="nouvelles__article__textes__entete">
                        <h2 class="nouvelles__article__textes__titre">
                            <?php?>
                            <a class="nouvelles__article__lien" href="<?php the_permalink();?>"><?php the_title()?></a>
                        </h2>
                        <h3 class="nouvelles__article__textes__date">
                        <?php the_date(); ?>
                        </h3>
                    </header>
                    <div class="nouvelles__article__textes__paragraphe">
                        <?php
                            the_content();
                        ?>
                    </div>
                    </div>
                    <?php if(has_post_thumbnail()){?>
                         <div class="nouvelles__article__imageUne">
                                <?php //affiche l'image de l'article
                                the_post_thumbnail("medium"); //peut être thumbnail, ou large. Il y a plusieurs possibilités?>
                        </div>
                    <?php } ?>
                </article>
    <?php }
        }
         wp_reset_postdata();  ?>
         </section>
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

        if($posts){
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
        }
         wp_reset_postdata(); ?>
   
        


</main>

<?php get_footer(); ?>