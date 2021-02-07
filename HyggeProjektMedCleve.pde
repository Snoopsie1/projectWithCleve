int hp = 0;
PShape creature;
int creatureHeight = 0;



void setup()
{
 size(600,600); 
 hp = 550;
 creatureHeight = 280;
 creature = loadShape("Dustie.svg");
 rectMode(CORNERS);
}

void draw()
{
 background(255);
 //HP Bar background and text
 stroke(0);
 fill(150);
 rect(20,20,560,80); 
 
 textSize(20);
 fill(200);
 text("HP",32,40);
 fill(0);
 text("HP",30,40);
  
 //Dynamic HP bar
 rectMode(CORNER);
 noStroke();
 fill(200,0,0);
 rect(25,50,hp,40);
 
 //Creature
 shape(creature,150,200,280,creatureHeight);
 
    
 //Victory Screen   
    if (hp <= 0)
  {
   textSize(50);
   text("YOU WIN!",175,300);
  }
}


void mousePressed()
{
  //Creature takes damage
  hp = hp - 25;
  creatureHeight = creatureHeight - 12;
  
  //Creature disappears when hp <= 0
  if (hp <= 0)
  {
   hp = 0; 
   creatureHeight = 0;
  }
}


//Reset button
void keyPressed()
{
 if (key == 'r');
 {
  setup(); 
 }
  
}
