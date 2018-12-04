(function() {
	"use strict";
	
//video controls

//variables
	var playSwitch = document.querySelector("#playPause");
	var trailers = document.querySelector("#eventVid");
	var muteVideo = document.querySelector("#muteVideo");
	var videoPlace = document.querySelector("#videoTime");
	var volumeSlider = document.querySelector("#volumeSlider");



//functions
function playVideo() {
	console.log("from playVideo");
	if (trailers.paused){
		trailers.play();
		playSwitch.innerHTML = "PAUSE";
	}else{
		trailers.pause();
		playSwitch.innerHTML = "PLAY";
	}
}

function vidmute () {
	if(trailers.muted) {
		trailers.muted = false;
		muteVideo.innerHTML = "MUTE"; //if not mute, this will show
	} else {
		trailers.muted = true;
		muteVideo.innerHTML = "UNMUTE"; //if muted, this will show... maybe put pictures instead of words
	}
}

function vidSeek (){
	var seekto = trailers.duration * (videoPlace.value / 100);
	trailers.currentTime = seekto;
}

function seektimeupdate () {
	var nt = trailers.currentTime * (100 / trailers.duration);
	videoPlace.value = nt; //time is equivalent to the slider
}

function volumeCtrl () {
	trailers.volume = volumeSlider.value; //volume is equivalent to the slider
}


//listeners
	playSwitch.addEventListener("click", playVideo, false);
	muteVideo.addEventListener("click", vidmute, false);
	videoPlace.addEventListener("change", vidSeek, false);
	trailers.addEventListener("timeupdate", seektimeupdate, false);
	volumeSlider.addEventListener("change", volumeCtrl, false);


})();


