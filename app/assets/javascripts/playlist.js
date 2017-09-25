var counter = 0;

$(".product-arrow").click(function(){
  counter++;
  $(".product-count", this).text(counter);
});

