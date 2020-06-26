function sliderScroll() {
  const slider_card = document.querySelector('.slider');
  setTimeout(function(){slider_card.scroll({ left: 800, behavior: 'smooth' }); }, 3000);
  setTimeout(function(){slider_card.scroll({ left: -800, behavior: 'smooth' }); }, 5000);
}
export{sliderScroll}
