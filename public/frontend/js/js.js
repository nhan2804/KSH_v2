$('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    speed: 300,
    slidesToScroll: 3,
    autoplaySpeed :300,
    draggable: true,
    autoplay: true, /* this is the new line */
    autoplaySpeed: 2000,
    touchThreshold: 1000,
    dots: false,
    prevArrow: false,
    nextArrow: false
  });
  $(".page").hide();
$('.page').click(function() {
	$('body,html').animate({
	scrollTop: 0
	})
	});
	$(window).scroll(function () {
	var e = $(window).scrollTop();
	if (e > 300) {
		$(".page").show();
	} else {
		$(".page").hide();
	}
});

var elements = document.getElementsByClassName("d-product-img-more");

var myFunction = function() {
    var newSrc = this.getAttribute("src");
    document.getElementsByClassName("d-product-main-img")[0].setAttribute('src', newSrc);
};

for (var i = 0; i < elements.length; i++) {
    elements[i].addEventListener('click', myFunction, false);
}
