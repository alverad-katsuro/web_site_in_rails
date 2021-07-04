console.log('hello')
const burgerIco = document.querySelector('.navbar-burger');
const navbarMenu = document.querySelector('#nav-links');


burgerIco.addEventListener('click', () => {
    navbarMenu.classList.toggle('is-active');
});

