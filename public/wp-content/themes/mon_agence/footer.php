</div>
    <footer class="piedDePage">
        <section class="piedDePage__container">
<section class="piedDePage__container__section1">
    <h2><?php echo get_field("titre", '162'); ?></h2>   
    <p><?php echo get_field("adresse", '162'); ?></p>
    <p><?php echo get_field("email", '162'); ?></p>
    <p><?php echo get_field("numero", '162'); ?></p>
</section>
<hr class="piedDePage__container__hr">
<section class="piedDePage__container__section2">
    <h2><?php echo get_field("titre2", '162'); ?></h2>
    <div class="piedDePage__container__section2__reseaux">
        <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("twitter", '162')['sizes']['thumbnail']; ?>" alt="Logo Twitter">
    <p><?php echo get_field("twittertext", '162'); ?></p>
    </span>
    <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("instagram", '162')['sizes']['thumbnail']; ?>" alt="Logo Instagram">
    <p><?php echo get_field("instagramtext", '162'); ?></p>
    </span>
    <span class="piedDePage__container__section2__reseaux__container">
    <img src="<?php echo get_field("facebook", '162')['sizes']['thumbnail']; ?>" alt="Logo Facebook">
    <p><?php echo get_field("facebooktext", '162'); ?></p>
    </span>
    </div>
</section>
</section>
<p class="piedDePage__politique"><?php echo get_field("politique", '162'); ?></p>
    </footer>
    <?php wp_footer (); ?>

<script src="<?php echo get_template_directory_uri()?>/liaisons/js/menuwp.js"></script>

</body>
</html>