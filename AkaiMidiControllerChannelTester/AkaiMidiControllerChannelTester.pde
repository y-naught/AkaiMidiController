import themidibus.*;
MidiBus akai;


void setup(){
  
  MidiBus.list();
  akai = new MidiBus(this, 0, -1);
  //buttons = new MidiBus(this, 1, -1);
}

void draw(){
  
}

void controllerChange(ControlChange change){
 println(change.channel());
 println(change.number());
 println(change.value());
}

void noteOn(Note note){
 println(note.channel());
 println(note.pitch());
 println(note.velocity());
}