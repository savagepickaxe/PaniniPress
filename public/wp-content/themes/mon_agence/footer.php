
<?php $id_accueil = get_option('page_on_front');  ?>
</div>
    <footer class="piedDePage">
        <section class="piedDePage__container">
<section class="piedDePage__container__section1">
    <h2><?php echo get_field("titre", $id_accueil); ?></h2>   
    <p><?php echo get_field("adresse", $id_accueil); ?></p>
    <p><?php echo get_field("email", $id_accueil); ?></p>
    <p><?php echo get_field("numero", $id_accueil); ?></p>
</section>
<hr class="piedDePage__container__hr">
<section class="piedDePage__container__section2">
    <h2><?php echo get_field("titre2", $id_accueil); ?></h2>
    <div class="piedDePage__container__section2__reseaux">
        <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("twitter", $id_accueil)['sizes']['thumbnail']; ?>" alt="Logo Twitter">
    <p><?php echo get_field("twittertext", $id_accueil); ?></p>
    </span>
    <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("instagram", $id_accueil)['sizes']['thumbnail']; ?>" alt="Logo Instagram">
    <p><?php echo get_field("instagramtext", $id_accueil); ?></p>
    </span>
    <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("facebook", $id_accueil)['sizes']['thumbnail']; ?>" alt="Logo Facebook">
    <p><?php echo get_field("facebooktext", $id_accueil); ?></p>
    </span>
    </div>
</section>
</section>
<p class="piedDePage__politique"><?php echo get_field("politique", $id_accueil); ?></p>
    </footer>
    <?php wp_footer (); ?>

<script src="<?php echo get_template_directory_uri()?>/liaisons/js/menuwp.js"></script>

</body>
</html>