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
  float t = 0;
  float numb = 0;
  boolean countup = true;
  // Number of wall slats
  int wallLength = 128;
  
  // The setup block runs at the beginning of the animation. You could
  // also use this function to initialize variables, load data, etc.
  void setup() {
  }		 

  // The update block will be repeated for each frame. This is where the
  // action should be programmed.
  void update() {
    numb = 0;
    for (DWSlat slat : wall.slats) {
      slat.setTop((sin(t*(numb+32)/(64))+1)/2);
      slat.setBottom((cos(t*(numb+32)/(64))+1)/2);
      /*
      if (forward){
        loc = loc+step;
      } else {
        loc = loc-step;
      }
      slat.setBottom(loc);
      slat.setTop(loc);
      if ((loc >= 1) || (loc <= 0)){
        forward = !forward;
      }
      */
      if(countup){
        numb++;
      }
      else{
        numb--;
      }
      if(numb==32){
        countup = false;
      }
      if(numb==0){
        countup = true;
      }
    }
    t+=QUARTER_PI/2;
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