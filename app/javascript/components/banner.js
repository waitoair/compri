import Typed from 'typed.js';
const loadDynamicBannerText = () => {
  if (document.getElementById("titulo")) {
    new Typed('#titulo', {
    strings: ["Your favorite book at the best stores at the lowest price."], 
    typeSpeed: 45,
    loop: true
    });
  }
}
export { loadDynamicBannerText };