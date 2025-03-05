</div>
    <footer class="piedDePage">
<div class="section1">
<h2><?php echo get_field("titre", '162'); ?></h2>

<p><?php echo get_field("adresse", '162'); ?></p>
<p><?php echo get_field("email", '162'); ?></p>
<p><?php echo get_field("numero", '162'); ?></p>
</div>
<div class="section2">
    <h2><?php echo get_field("titre2", '162'); ?></h2>
    <img src="<?php echo get_field("twitter", '162')['sizes']['thumbnail']; ?>" alt="">
    <p><?php echo get_field("twittertext", '162'); ?></p>
    <img src="<?php echo get_field("instagram", '162')['sizes']['thumbnail']; ?>" alt="">
    <p><?php echo get_field("instagramtext", '162'); ?></p>
    <img src="<?php echo get_field("facebook", '162')['sizes']['thumbnail']; ?>" alt="">
    <p><?php echo get_field("facebooktext", '162'); ?></p>

</div>

    </footer>
    <?php wp_footer (); ?>

<script src="<?php echo get_template_directory_uri()?>/liaisons/js/menuwp.js"></script>

</body>
</html>