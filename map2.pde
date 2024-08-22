void square(int x, int y){
rect(x,y,100,100);

}

boolean map2() {
  noStroke();
    
  fill(255); // White fill for squares
  //needs optimiziation
  background(0);
  fill(0, 0, 255);
  rect(0,100,100,100);

  
  for(int i = 100; i < 500; i += 100) // first 4 right 
  {
    fill(255);
  square(i,100);
  }
  
  for(int i = 100; i < 500; i += 100) 
  {
    fill(255);
  square(i,300);
  }
  
   for(int i = 0; i < 400; i += 100) 
  {
   
  square(500,i);
  }
    square(100,400);
    square(100,500);
    square(200,500);
    square(200,600);
    square(300,600);
    square(300,600);
    square(300,600);
    square(400,600);
    square(400,500);
    square(500,500);
    square(600,500);
    square(700,500);
    for(int i = 0; i < 500; i += 100) 
  {
   
  square(700,i);
  }
  
  square(800,0);
  square(900,0);
  square(900,100);
  square(900,200);
  square(1000,200);
  square(1000,300);
  square(1000,400);
  square(900,400);
  square(900,500);
  square(900,600);
  
  square(1000,600);
  fill(0,255,0);
  rect(1000,550,100,100);
  if (gameStart)  {
    fill(255);
    
  }
  
  

  
  return true;
}
