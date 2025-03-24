<?php  /* Template name: Accueil */ ?> 
<?php get_header(); ?>

<main class="page">
    <section class="accueil__image">
    <img src="<?php echo get_field("imageaccueil")['sizes']['large']; ?>" alt="Image Accueil">
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
                                the_post_thumbnail("large"); //peut être thumbnail, ou large. Il y a plusieurs possibilités?>
                        </div>
                    <?php } ?>
                </article>
    <?php }
        }
         wp_reset_postdata();  ?>
         </section>
    <section class="realisations">
              
        <div class="realisations__wrapper swiper-wrapper">
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
      
            <section class="realisations__wrapper__container swiper-slide" id="realisation-<?php echo $post->ID;?>">

                <div class="realisations__wrapper__container__image">
            <picture>
                 <source media="(min-width: 800px)" srcset="<?php echo $image_info['sizes']["large"];?>">
                 <source media="(min-width: 601px)" srcset="<?php echo $image_info['sizes']["medium"];?>">
                <img src="<?php echo $image_info['sizes']['thumbnail'];?>" alt="<?php echo $image_info["alt"];?>" class="realisations__wrapper__container__image__img">
            </picture>
             <button class="realisations__wrapper__container__image__bouton">👁</button>
             <?php the_permalink()  ?>
</div>
<?php }?>
                <article class="realisations__wrapper__container__article ">
                    <div class="realisations__wrapper__container__article__contenu">
                    <header class="realisations__wrapper__container__article__contenu__entete">
                        <h2 class="realisations__wrapper__container__article__contenu__titre">
                           
                            <a class="realisations__wrapper__container__article__contenu__lien" href="<?php the_permalink();?>"><?php the_title()?></a>
                        </h2>
                    </header>
                    <p><?php echo get_field("nom_client")?></p>

                    <p class="realisations__wrapper__container__article__contenu__texte">
                        <?php 
                        the_excerpt();
                        ?>
                    </p>

                    </div>
                </article>
               
                </section>
               
            <?php }

            //réinitialise les données reçues par défaut du gabarit pour afficher le
            //reste des informations de la page, s'il y a lieu
            //wp_reset_postdata();
        }
        

         wp_reset_postdata(); ?>
         
            </div>
             <div class="realisations__wrapper__container__boutonprec">⇦</div>
                <div class="realisations__wrapper__container__boutonsuiv">⇨</div>
           
    </section>
        


</main>


<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>
document.addEventListener('DOMContentLoaded', () => {
    console.log("Swiper est-il disponible ?", typeof Swiper !== "undefined" ? "Oui" : "Non");

    const swiper = new Swiper('.realisations', {
        slidesPerView: 1,
        spaceBetween: 150,
        loop: true,
        navigation: {
            nextEl: '.realisations__wrapper__container__boutonsuiv',
            prevEl: '.realisations__wrapper__container__boutonprec',
        },
        breakpoints: {
          
            1024: {
                slidesPerView: 1,
                spaceBetween: 40
            }
        }
    });

    console.log("Swiper initialisé :", swiper);

    // Gestion du bouton "œil" pour afficher/cacher l'overlay sur mobile
    const eyeButtons = document.querySelectorAll('.realisations__wrapper__container__image__bouton');
    
    eyeButtons.forEach(boutonOeil => {
        boutonOeil.addEventListener('click', evenement => {
            console.log('click');
            
            
            // Trouver le conteneur parent du bouton
            const container = evenement.currentTarget.closest('.realisations__wrapper__container');
            
            // Sélectionner l'article à l'intérieur de ce conteneur
            const overlay = container.querySelector('.realisations__wrapper__container__article');
            const image = container.querySelector('.realisations__wrapper__container__image__img');

            if (overlay.style.opacity === '1') {
                overlay.style.opacity = '0';
                image.style.opacity = '1';
               
            } else {
                overlay.style.opacity = '1';
            
                image.style.opacity = '0';
            }
        });
    });
});


    </script>
    <?php get_footer(); ?>