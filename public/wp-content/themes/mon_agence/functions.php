<?php
function theme_footer (){
    register_sidebar( array(
    'name' => 'Pied de page',
    'id' => 'footer',
    'description' => 'Zone de widget pour le pied de page',
    'before_widget' => '<div class="footer-widget">',
    'after_widget' => '</div>',) );
}
add_action('widgets_init', 'theme_footer');
add_theme_support( 'custom-logo' );

function themename_custom_logo_setup() {
	$defaults = array(
		'height'               => 100,
		'width'                => 400,
		'flex-height'          => true,
		'flex-width'           => true,
		'header-text'          => array( 'site-title', 'site-description' ),
		'unlink-homepage-logo' => true, 
	);
	add_theme_support( 'custom-logo', $defaults );
}
add_action( 'after_setup_theme', 'themename_custom_logo_setup' );



if (function_exists('register_nav_menus')){
    register_nav_menus (
        array(
            'principal' => 'Menu principal'
        )
        );
}

//Déclaration des Réalisations
function agence_realisations_custom_post() {

    //On rentre les différentes dénominations de notre article personnalisé type
    //qui seront affichées dans l'interface administrative...
    $labels = array(
        // Le nom au pluriel
        'name'                => _x( 'Réalisations de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'       => _x( 'Réalisations', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'           => __( 'Réalisations'),
        //Les différents libellés de l'interface administrative
        'all_items'           => __( 'Tous nos réalisations'),
        'view_item'           => __( 'Voir nos réalisations'),
        'add_new_item'        => __( 'Ajouter une nouvelle réalisation'),
        'add_new'             => __( 'Ajouter'),
        'edit_item'           => __( 'Editer une réalisation'),
        'update_item'         => __( 'Modifier une réalisation'),
        'search_items'        => __( 'Rechercher une réalisation'),
        'not_found'           => __( 'Non trouvé'),
        'not_found_in_trash'  => __( 'Non trouvé dans la corbeille')
    );

    //On peut définir ici d'autres options pour notre type d'article personnalisé
    $args = array(
        'label'               => __( 'Nos réalisations'),
        'description'         => __( 'Tous sur nos réalisations'),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical'        => false,
        'public'              => true,
        'has_archive'         => true,
        'rewrite'			  => array( 'slug' => 'realisations')
    );

    // On enregistre notre type d'article personnalisé qu'on nomme ici "realisations" et ses arguments
    register_post_type( 'realisations', $args );
}
//Déclaration des Réalisations
function agence_services_custom_post() {

    //On rentre les différentes dénominations de notre article personnalisé type
    //qui seront affichées dans l'interface administrative...
    $labels = array(
        // Le nom au pluriel
        'name'                => _x( 'Réalisations de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'       => _x( 'services', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'           => __( 'services'),
        //Les différents libellés de l'interface administrative
        'all_items'           => __( 'Tous nos services'),
        'view_item'           => __( 'Voir nos services'),
        'add_new_item'        => __( 'Ajouter un nouveau service'),
        'add_new'             => __( 'Ajouter'),
        'edit_item'           => __( 'Editer un service'),
        'update_item'         => __( 'Modifier un service'),
        'search_items'        => __( 'Rechercher un service'),
        'not_found'           => __( 'Non trouvé'),
        'not_found_in_trash'  => __( 'Non trouvé dans la corbeille')
    );

    //On peut définir ici d'autres options pour notre type d'article personnalisé
    $args = array(
        'label'               => __( 'Nos services'),
        'description'         => __( 'Tous sur nos services'),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical'        => false,
        'public'              => true,
        'has_archive'         => true,
        'rewrite'			  => array( 'slug' => 'services')
    );

    // On enregistre notre type d'article personnalisé qu'on nomme ici "realisations" et ses arguments
    register_post_type( 'services', $args );
}
function agence_equipe_custom_post() {

    //On rentre les différentes dénominations de notre article personnalisé type
    //qui seront affichées dans l'interface administrative...
    $labels = array(
        // Le nom au pluriel
        'name'                => _x( 'Équipe de Mon Agence', 'Post Type General Name'),
        // Le nom au singulier
        'singular_name'       => _x( 'équipe', 'Post Type Singular Name'),
        // Le libellé affiché dans le menu
        'menu_name'           => __( 'équipe'),
        //Les différents libellés de l'interface administrative
        'all_items'           => __( 'Notre équipe'),
        'view_item'           => __( 'Voir notre équipe'),
        'add_new_item'        => __( 'Ajouter une nouvelle équipe'),
        'add_new'             => __( 'Ajouter'),
        'edit_item'           => __( 'Editer équipe'),
        'update_item'         => __( 'Modifier équipe'),
        'search_items'        => __( 'Rechercher une équipe'),
        'not_found'           => __( 'Non trouvé'),
        'not_found_in_trash'  => __( 'Non trouvé dans la corbeille')
    );

    //On peut définir ici d'autres options pour notre type d'article personnalisé
    $args = array(
        'label'               => __( 'Notre équipe'),
        'description'         => __( 'Tous sur notre équipe'),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail',
            'comments', 'revisions', 'custom-fields'),
        'hierarchical'        => false,
        'public'              => true,
        'has_archive'         => true,
        'rewrite'			  => array( 'slug' => 'équipe')
    );

    // On enregistre notre type d'article personnalisé qu'on nomme ici "realisations" et ses arguments
    register_post_type( 'equipe', $args );
}

add_action( 'init', 'agence_realisations_custom_post', 0 );
add_action( 'init', 'agence_services_custom_post', 0 );
add_action( 'init', 'agence_equipe_custom_post', 0 );
?>

<?php
    if(function_exists('add_theme_support')){
        add_theme_support('post-thumbnails');
    }
?>

