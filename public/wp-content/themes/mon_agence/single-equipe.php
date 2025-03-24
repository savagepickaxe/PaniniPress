<?php
get_header();

?>

<main class="equipesingle">

<?php the_post(); //nécessaire à the_author() et the_date()
   // var_dump($post); //Ce que reçoit la page?>
      <header class="article__entete">
            <h1 class="equipesingle__titre"><?php the_title() ?></h1>
        </header>
		
    <article class="equipesingle__article">
     
		
        <?php

//Affichage de plusieurs images responsives définies dans les champs d'ACF

//Boucler dans les champs d'images de ACF - un champ par image
//Nommer les champs avec un numéro - photo_1, photo_2
//Ici 8 images possibles

for($cpt=1;$cpt<=8;$cpt++){

    //Le champ d'ACF doit être configuré pour retourner un tableau
    $image_info=get_field("photo_".$cpt."_equipe");

    //Si l'image est définie dans ACF
    if($image_info!=null){
        //Utiliser la balise picture pour le redimensionnement de l'image
        //ici on utilise trois images personnalisées... Mais on peut utiliser thumbnail, medium, etc...
        //l'attribut sizes contient tout les formats d'image nécessaire.
        ?>
        <picture class="equipesingle__image">
            <source media="(min-width: 800px)" srcset="<?= $image_info['sizes']["large"]?>">
            <source media="(min-width: 601px)" srcset="<?= $image_info['sizes']["medium"]?>">
            <img  src="<?= $image_info['sizes']["thumbnail"]?>" alt="<?= $image_info["alt"];?>">
        </picture>
    <?php }
} ?>
      


  <div class="equipesingle__infos">
     <h2 class="equipesingle__infos__titre">
                            <?php //affiche le lien et le titre de l'article'?>
                            <a class="equipe__lien" href="<?php the_permalink();?>"><?php the_title()?></a>
     </h2>
            <p class="equipe__infos__titre_du_membre"><?php echo get_field("titre_du_membre")?></p>
            <p class="article__texte">
            <?php  the_content() ?>
            </p>
    </div>
   
    <div class="equipesingle__navsequentielle">
    <?php
    the_post_navigation( array(
        'prev_text'  => '<button class="equipesingle__navsequentielle__nav-button equipesingle__navsequentielle__prev-button">← %title</button>',
        'next_text'  => '<button class="equipesingle__navsequentielle__nav-button equipesingle__navsequentielle__next-button">%title →</button>',
    ) );
    ?>
    </div>

	   
	   
        <footer class="equipesingle__piedPage">
            <h4 class="equipesingle__piedPage__author">Par: <?php the_author(); //Attention! Nécessite un appel à the_post() avant cet affichage ?></h4>
            <h4 class="equipesingle__piedPage__date">  Publié le: <?php the_date(); //Attention! Nécessite un appel à the_post() avant cet affichage ?></h4>
        </footer>
    </article>

</main>

<?php get_footer()?>
