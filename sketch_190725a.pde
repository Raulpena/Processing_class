int y = 1;
MyCircle circulo;
ArrayList<MyCircle> circles = new ArrayList();
void settings() {
  size (600,600); 
}

void setup() {
  for (int i = 0; i < 10; i++){
   circles.add(new MyCircle(random(0,width),random(0,height),int(random(1,3)))); 
  }
}
void draw(){
  background(155);
    for (int i=0; i > circles.size();i++){
      circles.get(i).render();
      circles.get(i).moveY(1);
      circles.get(i).looping();
  }
}
