var waypoint = new Waypoint({
    element:document.getElementById("solarSystemAge"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('solarSystemAge', 0, 4600000000, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "40%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("asteroidCount"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('asteroidCount', 0, 552894, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "55%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("planetsCount"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('planetsCount', 0, 8, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "55%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("dwarfCount"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('dwarfCount', 0, 5, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "55%"
  })


  var waypoint = new Waypoint({
    element:document.getElementById("moonCount"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('moonCount', 0, 181, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "55%"
  })

  var waypoint = new Waypoint({
    element:document.getElementById("cometCount"),
    handler:function(direction){
        var options = {
              useEasing: true, 
              useGrouping: true, 
              separator: ',', 
              decimal: '.', 
            };
            var solarSystem = new CountUp('cometCount', 0, 3083, 0, 5, options);
            if (!solarSystem.error) {
              solarSystem.start();
            } else {
              console.error(solarSystem.error);
            }
      },
      offset: "55%"
  })