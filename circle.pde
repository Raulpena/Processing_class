class MyCircle{
  PVector pos = new PVector();
  int diametro;
  float vel = 0.2;
  MyCircle(float x_, float y_, int diametro_){
  pos.x = x_;  
  pos.y = y_;
  diametro = diametro_;
  }
  
 void render(){
  circle(pos.x,pos.y,diametro); 
 }
 void moveX(int dir_){
   pos.x += vel*dir_;
 }
 void moveY(int dir_){
   pos.y += vel*dir_;
   vel += 0.1;
 }
 void looping(){
  if (pos.y > height) {
   pos.y = 0; 
  }
 }
}
