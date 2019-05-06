synchronized void setup(){
  a();
  new A().run();
  println("a");
}
void draw(){
  
}
class A extends Thread{
  public void run(){
    synchronized(Synchronized.this){
      a();
    }
  }
}
synchronized void a(){
  synchronized(Synchronized.this){
    println("broke");
  }
}
