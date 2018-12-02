window.onload = function(){
  console.log("Hello World");
  
  //planets

  var waypoint = new Waypoint({
      element:document.getElementById("mercury"),
      handler:function(direction){
          this.element.classList.add("slideInUp");
          this.element.classList.add("animated");
          this.element.classList.add("visible");
      },
      offset: "90%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("venus"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("mars"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("earth"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("jupiter"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("saturn"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("uranus"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})

var waypoint = new Waypoint({
    element:document.getElementById("neptune"),
    handler:function(direction){
        this.element.classList.add("slideInUp");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    },
    offset: "90%"
})



//astronaut

var waypoint = new Waypoint({
  element:document.getElementById("visor_2_"),
  handler:function(direction){
      this.element.classList.add("fadeOut");
      this.element.classList.add("animated");
      this.element.classList.add("hidden");
    },
    offset: "45%"
})

var waypoint = new Waypoint({
    element:document.getElementById("cometName"),
    handler:function(direction){
        this.element.classList.add("fadeIn");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "70%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("asteroidsName"),
    handler:function(direction){
        this.element.classList.add("fadeIn");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "70%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("moonName"),
    handler:function(direction){
        this.element.classList.add("fadeIn");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "70%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("planetsName"),
    handler:function(direction){
        this.element.classList.add("fadeIn");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "70%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("dwarfName"),
    handler:function(direction){
        this.element.classList.add("fadeIn");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "70%"
  })

  //tezt boxes below

  var waypoint = new Waypoint({
    element:document.getElementById("mercury-text"),
    handler:function(direction){
        this.element.classList.add("slideInLeft");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("venus-text"),
    handler:function(direction){
        this.element.classList.add("slideInRight");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("earth-text"),
    handler:function(direction){
        this.element.classList.add("slideInLeft");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("mars-text"),
    handler:function(direction){
        this.element.classList.add("slideInRight");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("jupiter-text"),
    handler:function(direction){
        this.element.classList.add("slideInLeft");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("saturn-text"),
    handler:function(direction){
        this.element.classList.add("slideInRight");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("uranus-text"),
    handler:function(direction){
        this.element.classList.add("slideInLeft");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"

  })

  var waypoint = new Waypoint({
    element:document.getElementById("neptune-text"),
    handler:function(direction){
        this.element.classList.add("slideInRight");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
      },
      offset: "80%"
  })


};
