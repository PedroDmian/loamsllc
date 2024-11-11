import './bootstrap';

import Alpine from 'alpinejs';

window.Alpine = Alpine;

Alpine.start();

const menuButton = document.getElementById('menu-button');
const mobileMenu = document.getElementById('mobile-menu');

if(menuButton && mobileMenu) {
    menuButton.addEventListener('click', () => {
        mobileMenu.classList.toggle('hidden');
    });
}

window.addEventListener('scroll', () => {
    const header = document.getElementById('header');

    if(header) {
        console.log('header ::', header);
        

        if(window.scrollY > 50) {
            header.classList.add('background-header')
        } else {
            header.classList.remove('background-header')
        }
    }
});