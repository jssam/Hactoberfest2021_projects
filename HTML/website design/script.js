// Navbar
let togglebuton = document.querySelector('#menu-bars');
let navbarlinks = document.querySelector('#nav-links');
togglebuton.onclick = () =>{

    navbarlinks.classList.toggle('active');
}

// Video slider
function videoUrl(hmmmmmm){
    document.getElementById("slider").src = hmmmmmm;
}

// image slider
function imgUrl(hmmmmmm){
    document.getElementById("img-slider").src = hmmmmmm;
}
