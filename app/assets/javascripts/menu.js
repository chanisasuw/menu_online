//= require jquery.min.js

function() {
$('.grid-block').hover(
function(){
$(this).find('.caption').slideDown(250);
},
function(){
$(this).find('.caption').slideUp(250);
}
);

    });
    </script>
