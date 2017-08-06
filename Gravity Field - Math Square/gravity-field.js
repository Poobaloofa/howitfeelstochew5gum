import {Behavior} from "behaviors";
import P5Behavior from "p5beh";
import * as Sensor from "sensors";
import * as Display from "display";
import Floor from "floor";

var pb = new P5Behavior();
var dots = [];
pb.setup = function(p) {
  var gridSize = 30;
  this.gravityScalar = 2;
  this.dotSize = 3;
  this.inertia = .99;
  this.maxAcceleration = 5;
  for(var i = 0; i < gridSize; i++) {
    for(var j = 0; j < gridSize; j++) {
      dots.push({x: (i+0.5)*(576/gridSize), y: (j+0.5)*(576/gridSize), xVelocity: 0, yVelocity: 0, initX: this.x, initY: this.y, age:0});
    }
  }
}
var distanceSquared = function(element1, element2) {
  return Math.pow(element1.x - element2.x, 2) + Math.pow(element1.y - element2.y, 2);
};
var lastRandomUser = null;
pb.draw = function(floor, p) {
  this.drawingContext.fillStyle = "rgba(0, 0, 0, 0.4)";
  this.drawingContext.fillRect(0, 0, 576, 576);

  for(var user of floor.users) {
    pb.drawUser(user);
    for(var dot of dots) {
      dot.xVelocity -= Math.max(Math.min(this.gravityScalar*(dot.x-user.x)/distanceSquared(dot, user), this.maxAcceleration), -this.maxAcceleration);
      dot.yVelocity -= Math.max(Math.min(this.gravityScalar*(dot.y-user.y)/distanceSquared(dot, user), this.maxAcceleration), -this.maxAcceleration);
    }
  }

  for(var dot of dots) {
    this.drawingContext.beginPath();
    this.drawingContext.arc(dot.x, dot.y, this.dotSize, 0, Math.PI*2);
    this.drawingContext.closePath();
    var redshiftcolor = ("00" + Math.floor(255-Math.sqrt(Math.pow(dot.xVelocity,2)+Math.pow(dot.yVelocity,2))*256/(10)).toString(16)).slice(-2);
    this.drawingContext.fillStyle = "#ff" + redshiftcolor + redshiftcolor;
    if (dot.xVelocity<.5 && dot.yVelocity<.5) {
      dot.age+=1;
      //var brownshiftcolor = ("0"+(Math.floor(dot.age*1/199)).toString(16)).slice(-2)+(Math.floor(dot.age*1/116)).toString(16)+Math.floor(dot.age*1/56).toString(16);
      //console.log(brownshiftcolor);
      //this.drawingContext.fillStyle = brownshiftcolor;
    }else{
      dot.age = 0;
    }

    this.drawingContext.fill();
    dot.x += dot.xVelocity;
    dot.y += dot.yVelocity;
    dot.xVelocity*=this.inertia;
    dot.yVelocity*=this.inertia;
    if (dot.x<=0) {
      dot.x = 576-1;
    }
    if (this.y<=0) {
      dot.y = 576-1;
    }
    dot.x%=576;
    dot.y%=576;
	}
  }
}

export const behavior = {
  title: "Gravity Field Simulator",
  init: pb.init.bind(pb),
  frameRate: 60,
  numGhosts: 0,
  render: pb.render.bind(pb)
}
