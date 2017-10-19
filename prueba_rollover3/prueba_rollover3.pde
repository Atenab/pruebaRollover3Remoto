// Los rectángulos miden 40 x 40 y están en las 
// coordenadas siguientes: (20,390), (90,390), (160,390) y (230,390)

PImage logotipo;
PFont font; 
int posHTexto;
int sentido;
int alphaDiametro;
String a;
float angulo;


int fondo;
int cuentaFrames;



void setup(){
size(400,450);
logotipo = loadImage("data/logo.png");
font = loadFont("data/Monospaced.plain-48.vlw");
a = "Buenos días";
textSize(48);

posHTexto = 0; //Posición del texto
sentido = 1; //Cambio de sentido del texto
angulo = 0; //ángulo de giro
alphaDiametro = 255; //Color y ctamaño del círculo

cuentaFrames=0;

  
} 


void draw(){
  
  background(fondo);
  stroke(0);
  fill(255);
  rect(20,390,40,40);
  rect(90,390,40,40);
  rect(160,390,40,40);
  rect(230,390,40,40);
  

  
  
  
  noStroke();
  
  if (mouseX>20 && mouseX<20+40 && mouseY>390 && mouseY<390+40){
    
      cuentaFrames+=100;
      for (cuentaFrames=0; cuentaFrames<500; cuentaFrames++);{
      fondo+=100;
      fondo++;
      }
    
    
    if(cuentaFrames>100){
     
      cuentaFrames=0;
    }
      
      
    
    image(logotipo,20,390);
    
  }else if (mouseX>90 && mouseX<90+40 && mouseY>390 && mouseY<390+40){
   
    fill(255,13,21);
    ellipse(width/2,height/2-50,alphaDiametro,alphaDiametro);
      alphaDiametro-=5;
        if (alphaDiametro<0){
      alphaDiametro=250;
        }
    
    
    image(logotipo,90,390);
    
  }else if (mouseX>160 && mouseX<160+40 && mouseY>390 && mouseY<390+40){
   
    pushMatrix();
    translate(width/2,height/2-50);
    rotate(radians(angulo));
    fill(5,252,52);
    rect(-100,-100,200,200);
    popMatrix();
    
    angulo+=3;
    image(logotipo,160,390);
    
  }else if (mouseX>230 && mouseX<230+40 && mouseY>390 && mouseY<390+40){
   
    fill(0);
    text(a,posHTexto,height/2);
    
    posHTexto+=5*sentido;
    
    if (posHTexto>width-textWidth(a) ||  posHTexto<=0 ){
      sentido*=-1;
    }
      
    
    image(logotipo,230,390);
    
    
    
  }else{
    fondo=255;
}

}