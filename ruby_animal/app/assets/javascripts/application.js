// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var $loadContainer = $("div id='load-container'></div>").css({
  position: 'fixed',
  width: '100%',
  height: '100%',
  textAlign: 'center'
  background: 'white'
});

var $loadDiv = $("<div id='load'></div>").css({
  position: 'absolute',
  top: '50%',
  left: '50%',
  transform: 'translate(-50%, -50%)'

});

$loadDiv.append($h3);
$loadDiv.append("<img src='./media/' />");
$loadDiv.append("<img src='./media/' />");
$loadDiv.append("<img src='./media/' />");
$loadContainer.append($loadDiv)

$('body').append($loadContainer);

var deg = 0;
var loadingInterval = setInterval(function () {
  $('#load img').css({transform: 'rotateY(' + deg % 360 + 'deg)'});
  deg += 5;
}, 20);

$(window).load(function () {
  $('#load-container').remove();
  clearInterval(loadingInterval);
});
