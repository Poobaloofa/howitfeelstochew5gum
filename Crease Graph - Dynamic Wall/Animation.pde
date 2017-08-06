public static class Animation extends WallAnimation {

  
  // First, we add metadata to be used in the MoMath system. Change these
  // strings for your behavior.
  String behaviorName = "Example Dynamic Wall Behavior";
  String author = "MoMath";
  String description = "Simple forward-backward behavior.";


  // Now we initialize a few helpful global variables.
  boolean forward = true;
  float step = 0.0003;
  float loc = 0;
  float t = 1000;
  float numb = 0;
  float crease = 0;
  float timeinc = 1;
  int realtime = 0;
  String func = "null";
  String[] functions = {"sine","triangle","weird","squared","power"};
  int funcindex = 0;
  // Number of wall slats
  int wallLength = 128;
  
  // The setup block runs at the beginning of the animation. You could
  // also use this function to initialize variables, load data, etc.
  void setup() {
    func = functions[funcindex];
  }		 

  // The update block will be repeated for each frame. This is where the
  // action should be programmed.
  void update() {
    numb = 0;
    for (DWSlat slat : wall.slats) {
        switch(func){
          case "sine":
            crease = sin(t+4*PI*numb/wallLength)/2+0.5; timeinc = 0.1; //sine
          break;
          case "triangle":
            crease = abs(((numb+t)/32)%2-1); timeinc = 0.5;//triangle wave
          break;
          case "cosecant": //SKIP THIS FUNCTION
            crease = (1/sin((numb+t)/8))/8+0.5; timeinc = 0.1;//cosecant
          break;
          case "weird":
            crease = (sin((t+numb)/4)-2*sin((t+numb)/8))/(2.598*2)+0.5; timeinc = 0.5;//weird sine
          break;
          case "squared":
            crease = (sin(((((t+numb)%148.6372)-64)*(((t+numb)%148.6372)-64)/256)/2)+1)/2; timeinc = 0.7;//sine (x^2)
          break;
          case "power":
            crease = (sin((30*sin((t+numb)/12)*5*sin((t+numb)/256))/128)+1)/2; timeinc = 1.2;//power sine 
          break;
        }
      if(numb%2==0){
        slat.setTop(crease/2);
        slat.setBottom((crease+1)/2);
      }
      else{
        slat.setTop(1-crease/2);
        slat.setBottom(1-(crease+1)/2);
      }
      numb++;
    }
    t+=timeinc;
    realtime++;
    if(realtime%180 == 179){
      funcindex++;
      func = functions[funcindex%5];
    }
  }

  // Leave this function blank
  void exit() {
  }
  
  // You can ignore everything from here.
  String getBehaviorName() {
    return behaviorName;
  }
  
  String getAuthorName() {
    return author;
  }
  
  String getDescription() {
    return description;
  }
  
}