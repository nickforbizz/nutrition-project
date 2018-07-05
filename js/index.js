$(document).ready(function() {
  // code only js you want to load when dom is loaded
});


if (window.dispatchEvent(new Event('resize'))) {
  // windowResize();
}
// $("img[id='img1']").css("height","350px");
// $("img[id='img1']").css("width","1200px");


function windowResize() {

  bodyWidth = $(window).width() + 'px';
  bodyHeight = $(window).height();
  console.log(" bodyWidth = " + bodyWidth, " bodyHeight = " + bodyHeight);
  // alert("som")
}

function funcme() {
  // $(".xsom").css("height":"100%","width":"100%");
  $("#xzom1").removeClass("xzom");
  $("#xzom1").addClass("xsom");

}
window.addEventListener('resize', windowResize);
window.addEventListener('load', funcme);

var nav = document.querySelector("#navbar");
var navOffSet = nav.offsetTop;

function fixNav() {
  if (window.scrollY >= navOffSet) {
    console.log(navOffSet);
    document.body.classList.add('fix_nav');
    document.body.style.paddingTop = nav.offsetHeight + 'px';
  } else {
    // console.log(window.scrollY);

    document.body.classList.remove('fix_nav');
    document.body.style.paddingTop = 0;

  }
}
window.addEventListener('scroll', fixNav);
// keyCodes
window.addEventListener('keyup', function (e) {
  console.log(e);
})

// Js For speechrecognition file
window.SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
var recognition = new webkitSpeechRecognition();
recognition.interimResults = true;

let p = document.createElement('p');
var words = document.querySelector('.words');
words.appendChild(p);

recognition.addEventListener('result', e => {
  console.log(e);
  console.log("ff");

});

recognition.start();
