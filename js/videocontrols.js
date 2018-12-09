(function() {
	"use strict";
	
//video controls

//variables
	var playSwitch = document.querySelector("#playPause");
	var videos = document.querySelector("#eventVid");
	var muteVideos = document.querySelector("#muteVideo");
	var videoPlace = document.querySelector("#time");
	var volumeSlider = document.querySelector("#volumeSlider");


//functions

//switch images
function playVideo() {
	//console.log("playing video");
	if (videos.paused){
		videos.play();
		playSwitch.src = "images/pause.svg";
		//console.log("image switch");
	}else{
		videos.pause();
		playSwitch.src = "images/play.svg";
	}
}

//hide buttons
function showHide() {
	console.log("hide");
	playSwitch.style.display = 'none';
	muteVideos.style.display = 'none';
}

//show play and pause button
function show() {
	playSwitch.style.display = 'block';
	playSwitch.classList.add("fadeIn");
	muteVideos.classList.add("animated");
	muteVideos.style.display = 'block';
}

function shownoAnimate() {
	playSwitch.style.display = 'block';
}

function vidReset() {
	videos.currentTime = 0;
	playSwitch.src = "images/play.svg";
}

//mute
function videoMute () {
	if(videos.muted) {
		videos.muted = false;
		muteVideos.src = "images/mute.png"; 
	} else {
		videos.muted = true;
		muteVideos.src = "images/unmute.png"; //if muted, change to unmute pic
	}
}


// time changers
function vidSeek (){
	var seekto = videos.duration * (videoPlace.value / 100);
	videos.currentTime = seekto;
}

function timeChange () {
	var time = videos.currentTime * (100 / videos.duration);
	videoPlace.value = time; //time is equivalent to the slider
}

// function volumeCtrl () {
// 	videos.volume = volumeSlider.value; //volume is equivalent to the slider
// }


//listeners
	playSwitch.addEventListener("click", playVideo, false);
	muteVideos.addEventListener("click", videoMute, false);
	videos.addEventListener("mouseout", showHide, false);
	videos.addEventListener("mouseover", show, false);
	videos.addEventListener("ended", vidReset, false);
	playSwitch.addEventListener("mouseover", shownoAnimate, false);
	muteVideos.addEventListener("mouseout", showHide, false);
	muteVideos.addEventListener("mouseover", show, false);
	videoPlace.addEventListener("change", vidSeek, false);
	videos.addEventListener("timeupdate", timeChange, false);


	// volumeSlider.addEventListener("change", volumeCtrl, false);
	


})();





