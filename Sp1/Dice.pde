class Dice {
  int Number;
  color eyeColor;
  color dieColor;

  
  Dice(color tempEyeColor, color tempDieColor) {
    Number = int (random(1, 7));
    eyeColor = tempEyeColor;
    dieColor = tempDieColor;
    
    
  }
  void roll() {
    Number = int (random(1, 7));
  }
  
   }
  
