class DiceCup {
  Dice[] diceCup = new Dice[10];
  int l1 = 0;
  int l2 = 0;
  int l3 = 0;
  int l4 = 0;
  int l5 = 0;
  int l6 = 0;
  int dieSize = 50;
  int eSize = 10;
  int spacing = 100;
  int x = 100;
  int y = 100;
  
  DiceCup(){
  }
  
  void addDie(int x) {
    diceCup = new Dice[x];
for (int i = 0;  i < x; i++) {
    diceCup[i] = new Dice(color(random(255),random(255),random(255)), color(random(255),random(255),random(255)));
  }
}

  
  
  void shake() {
   for (int x = 0; x < diceCup.length; x++) {
     diceCup[x].roll();
   }
  }
  
  void drawDie() {
    rectMode(CENTER);
    ellipseMode(CENTER);
    //draw die and eyes
    
    for (int i = 0; i < diceCup.length; i++)
    {
if (diceCup[i].Number == 1) {
  fill(diceCup[i].dieColor);
  rect((x + (l1 * spacing)), y, dieSize, dieSize);
  fill(diceCup[i].eyeColor);
  ellipse(x + (l1 * spacing), y, eSize, eSize);
  l1 = l1 + 1;
  }
    
else if (diceCup[i].Number == 2) {
  fill(diceCup[i].dieColor);
   rect(x + (l2 * spacing), y + spacing, dieSize, dieSize);
  fill(diceCup[i].eyeColor);
  ellipse((x - 15) + (l2 * spacing), y + 85, eSize, eSize);
  ellipse((x + 15) + (l2 * spacing), y + 115, eSize, eSize);
  l2 = l2 + 1;
    }
    
else if (diceCup[i].Number == 3) {
  fill(diceCup[i].dieColor);
  rect(x + (l3 * spacing), y + (spacing * 2), dieSize, dieSize);
  fill(diceCup[i].eyeColor);
  ellipse((x - 15) + (l3 * spacing), y + 185, eSize, eSize);
  ellipse((x + 15) + (l3 * spacing), y + 215, eSize, eSize);
  ellipse(x + (l3 * spacing), y + 200, eSize, eSize);
  l3 = l3 + 1;
  }
  
  else if (diceCup[i].Number == 4) {
    fill(diceCup[i].dieColor);
    rect(x + (l4 * spacing),  y + (spacing * 3), dieSize, dieSize);
    fill(diceCup[i].eyeColor);
    ellipse((x - 15) + (l4 * spacing), y + 285, eSize, eSize);
    ellipse((x - 15) + (l4 * spacing), y + 315, eSize, eSize);
    ellipse((x + 15) + (l4 * spacing), y + 285, eSize, eSize);
    ellipse((x + 15) + (l4 * spacing), y + 315, eSize, eSize);
    l4 = l4 + 1;
}

  else if (diceCup[i].Number == 5) {
  fill(diceCup[i].dieColor);
  rect(x + (l5 * spacing), y + (spacing * 4), dieSize, dieSize);
  fill(diceCup[i].eyeColor);
  ellipse((x - 15) + (l5 * spacing), y + 385, eSize, eSize);
  ellipse((x - 15) + (l5 * spacing), y + 415, eSize, eSize);
  ellipse((x + 15) + (l5 * spacing), y + 385, eSize, eSize);
  ellipse((x + 15) + (l5 * spacing), y + 415, eSize, eSize);
  ellipse(x + (l5 * spacing), y + 400, eSize, eSize);
  l5 = l5 + 1;
}

else if (diceCup[i].Number == 6) {
  fill(diceCup[i].dieColor);
  rect(x + (l6 * spacing), y + (spacing * 5), dieSize, dieSize);
  fill(diceCup[i].eyeColor);
      ellipse((x - 15) + (l6 * spacing), y + 485, eSize, eSize);
      ellipse((x - 15) + (l6 * spacing), y + 515, eSize, eSize);
      ellipse((x + 15) + (l6 * spacing), y + 485, eSize, eSize);
      ellipse((x + 15) + (l6 * spacing), y + 515, eSize, eSize);
      ellipse((x - 15) + (l6 * spacing), y + 500, eSize, eSize);
      ellipse((x + 15) + (l6 * spacing), y + 500, eSize, eSize); 
      l6 = l6 + 1;
  

}
}
}
}
