// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
const menuIcon = document.querySelector('.menu-icon');
const dropdownContent = document.querySelector('.dropdown-content');
menuIcon.addEventListener('click', function() {
  dropdownContent.classList.toggle('show');
});
