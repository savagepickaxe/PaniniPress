/**
 * @file Un carousel simple pour WP.
 * @author @emichelrouleau <mrouleau@csfoy.ca>
 * @version 1.0.0
 */

//*******************
// Déclaration d'objet(s)
//*******************
let carousel = {
  refcarousel: null,
  refBoutonPrec: null,
  refBoutonSuiv: null,
  refImage: null,
  no_image: 1,

  configurerNav : function ()
  {
    console.log('carousel');

    //********** Création des boutons du carousel
    document.body.classList.add('js');
    // On sélectionne le carousel dans le HTML
    this.refCarousel = document.getElementById("carousel");

    // On crée les boutons
    this.refBoutonPrec = document.createElement("button");
    this.refBoutonSuiv = document.createElement("button");

    // On crée des contenants pour les libellés de boutons
    let libellePrec = document.createElement("span");
    let libelleSuiv = document.createElement("span");
    // On associe le texte du libellé à l'élément html
    libellePrec.innerHTML = "←";
    libelleSuiv.innerHTML = "→";
    // On ajoute les libellés dans les boutons
    this.refBoutonPrec.appendChild(libellePrec);
    this.refBoutonSuiv.appendChild(libelleSuiv);

    // On ajoute les classes aux boutons et aux libellés
    this.refBoutonPrec.id = 'btn_precedent';
    this.refBoutonSuiv.id = 'btn_suivant';
    this.refBoutonPrec.className = 'carousel__controle';
    this.refBoutonSuiv.className = 'carousel__controle';

    // Ajout du bouton dans l'entête de la page html
    this.refCarousel.prepend(this.refBoutonPrec);
    this.refCarousel.append(this.refBoutonSuiv);

    // Ajout de l'écouteur d'événement sur le bouton du menu
    this.refBoutonPrec.addEventListener('click', this.naviguerCarousel.bind(this));
    this.refBoutonSuiv.addEventListener('click', this.naviguerCarousel.bind(this));

  },

  naviguerCarousel: function (evenement)
  {

    if (evenement.currentTarget.id === "btn_precedent"){
      this.no_image--
      if(this.no_image===0){this.no_image=1}
    }else{
      this.no_image++

      nombre_images=document.getElementsByClassName("liens_caches").length;
      if(this.no_image>nombre_images){this.no_image=nombre_images}
    }


    let text = document.getElementById('photo_'+ this.no_image).firstChild.innerHTML;
    let source = document.getElementById("img_large")
    source.setAttribute("src", text);

    text = document.getElementById('photo_'+ this.no_image).childNodes[1].innerHTML;
    source = document.getElementById("img_medium");
    source.setAttribute("srcset", text);

    text = document.getElementById('photo_'+ this.no_image).lastChild.innerHTML;
    source = document.getElementById("img_thumbnail");
    source.setAttribute("srcset", text);

  }
};


//*******************
// Écouteurs d'événements
//*******************

window.addEventListener('load', function () { carousel.configurerNav(); });