// .hidden { visibility:hidden; }
// Html
// Add hidden class to your dynamic content initially.

//  <div class="carousel-col-copy hover-hide hidden">
// JS
// Use .toggle() on hover.

// $(".tint").hover(function(){
//         $('.hover-hide').toggleClass('hidden');
// });



// .hidden { visibility:hidden; }


// <h2 class="username hidden"></h2>


$('.profile-card').hover(function(){
  $(this).children().toggleClass('hidden')
});