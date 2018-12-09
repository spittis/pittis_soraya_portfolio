(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            portfoliomessage : "PORTFOLIO",

            videodata : [],
            singledata : [],

            imagetitle : "",
            imagedescription : "",
            videosource : "",
            imagegen: "",

            showDetails : false,

            isHidden: true, 
 
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchMovieData(null); //this is where we would fetch PHP stuff
        },

        methods : {
            login() {
                //stub
                console.log('login functionality');
            },

            fetchSingle(e) {
                //debugger;
                this.fetchMovieData(e.currentTarget.dataset.movie);
            },

            fetchReel(e) {
                              //debugger;
                              this.fetchMovieData(e.currentTarget.dataset.type = 'image');
                          },

            loadMovie(e) {
                //debugger;
                e.preventDefault(); //block this page reload 

                dataKey = e.currentTarget.getAttribute('href'); //give me the href (video name-will either be force awakens, avenger, stranger things) and pull that object, set, then it will pull video title, description, source to whatever those things are, get those values, bound to my vue, everytime i click they change because im changing my vue someshit
                currentData = this.videodata.filter(video => video.img_path === dataKey); //grabbing avenger, star wars, etc. and grabbing the data out of it //vue model gets updated, so does other stuff

                this.imagetitle = currentData[0].img_name;
                this.imagedescription = currentData[0].img_desc;
                this.videosource = dataKey;
                this.imagegen = currentData[0].vid_genre;

                this.showDetails = true;

            },

            /*loadHref(e) {
          
                window = window.open(img_desc, windowName, [windowFeatures]);

            },*/


           
            fetchMovieData(movie) {
               let url = movie ?`./includes/index.php?movie=${movie}` : './includes/index.php'; 
                //this is a ternary statement, shorthand if else statement. left of : is true, right is false
            
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    console.log(data);

                    if (movie) {
                        //store data in the single result above
                        this.singledata = data;
                    } else {
                        //initial data grab, store in the videodata array
                        this.videodata = data;
                    }
                })

                .catch(function(error){
                    console.log(error);
                });

            }


        }

    })

})();