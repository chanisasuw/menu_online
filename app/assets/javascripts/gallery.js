//= require jquery.isotope.js

$(window).load(function(){
var $container = $('.portfolioContainer');
$container.isotope({
filter: '*',
animationOptions: {
duration: 750,
easing: 'linear',
queue: false
}
});
$('.portfolioFilter button').click(function(){
$('.portfolioFilter .current').removeClass('current');
$(this).addClass('current');
var selector = $(this).attr('data-filter');
$container.isotope({
filter: selector,
animationOptions: {
duration: 750,
easing: 'linear',
queue: false
}
});
return false;
});
});
