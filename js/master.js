(() => {

    const cars = document.querySelectorAll('.data-ref'); //add some event handling at the bottom, check url //declaring cars

    function getData() {

        //whenever we click on a thumbnail, pass its id to the php query (it will go through each one)
        let targetURL = `./includes/connect.php?modelNo=${this.id}`; //this is the url we have open in the browser window ow //this is hardcoded to one car.. fetch goes and gets it, parses it, then goes nad puts that stuff on the page
//grab that id and apply that to our string?


        fetch(targetURL) //like telling your dog to go fetch the data from the url and bring it back! good doggy!
        .then(res => res.json()) //want to parse this. turn the result into a plain JS object
        .then(data => {
            console.log(data); //let's see what we got 
            //run a function to parse our data
            showCarData(data[0]); //run a function to put the data on the page 
            }) //lets see what we got
        .catch(function(error) {
            console.log(error); //if anything broke, lot it in the console    
        }); 
    }  
//just trying to get the information we want e.g. price. 
    function showCarData(data) { //data accepting what is happening up top. 
        //debugger; comment out after bc you dont need to see what you did wrong anymore
        //parse the DB info and put it where it neds to go
        const { modelName, pricing, modelDetails } = data; //destructuring assignmnet => MDN JS destructuring 

        //grab the elements we need, and populate them with data
        document.querySelector('.modelName').textContent = modelName; //will have three of these lines except with the selector in the quotes
        document.querySelector('.priceInfo').textContent = `$ ${pricing}.00`;
        document.querySelector('.modelDetails').textContent = modelDetails;
    }

    cars.forEach(car => car.addEventListener("click", getData)); //cars has been declared at the top


    //getData(); //trigger the getData function //this is calling the fetch right when the page loads
})();