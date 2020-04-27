boolean win = false;
PFont f;

//cuadrado
int posxs = 225;
int posys = 150;
float angles = 0;

//triangulo pequeño t1
int posxt1 = 263;
int posyt1 = 75;
float anglet1 = 0;

//triangulo pequeño t2
int posxt2 = 150;
int posyt2 = 188;
float anglet2 = 0;

//triangulo mediano t3
int posxt3 = 263;
int posyt3 = 263;
float anglet3 = 0;

//triangulo grande t4
int posxt4 = 150;
int posyt4 = 75;
float anglet4 = 0;

//triangulo grande t5
int posxt5 = 75;
int posyt5 = 150;
float anglet5 = 0;

//paralelogramo
int posxp = 113;
int posyp = 263;
float anglep = 0;


//Dibujar cuadrado
void dibRect() {
  if ((dist(posxs, posys, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      if(angles==PI/2){
        angles=0;
      }else{
        angles = angles + PI/4;
      }
      delay(500);
    }
  }

  if ((dist(posxs, posys, mouseX, mouseY)<30)&&(mousePressed)) {
    posxs=mouseX;
    posys=mouseY;
    background(112, 82, 252);
    push();
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    dibt1();
    fill(202, 129, 255);
    translate(posxs, posys);
    rotate(angles);
    quad(-75, 0, 0, -75, 75, 0, 0, 75);
    pop();
  }else{
    push();
    translate(posxs, posys);
    rotate(angles);
    quad(-75, 0, 0, -75, 75, 0, 0, 75);
    pop();
  }
}


//dibujar triangulo pequeño t1
void dibt1() {
  if ((dist(posxt1, posyt1, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      anglet1 = anglet1 + radians(45);
      delay(500);
    }
  }

  if ((dist(posxt1, posyt1, mouseX, mouseY)<30)&&(mousePressed)) {
    posxt1=mouseX;
    posyt1=mouseY;
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    push();
    translate(posxt1, posyt1);
    rotate(anglet1);
    triangle(37.5, -75, 37.5, 75, -37.5, 0);
    pop();
  } else {
      push();
      translate(posxt1, posyt1);
      rotate(anglet1);
      triangle(37.5, -75, 37.5, 75, -37.5, 0);
      pop();
    }
} 

//Dibujar triagulo pequeño t2
void dibt2() {
  if ((dist(posxt2, posyt2, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      anglet2 = anglet2 + radians(45);
      delay(500);
    }
  }

  if ((dist(posxt2, posyt2, mouseX, mouseY)<30)&&(mousePressed)) {
    posxt2=mouseX;
    posyt2=mouseY;
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    push();
    translate(posxt2, posyt2);
    rotate(anglet2);
    triangle(0, -37.5, -75, 37.5, 75, 37.5);
    pop();
  } else {
      push();
      translate(posxt2, posyt2);
      rotate(anglet2);
      triangle(0, -37.5, -75, 37.5, 75, 37.5);
      pop();
    }
} 

//dibujar triangulo mediano 3 t3
void dibt3() {
  if ((dist(posxt3, posyt3, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      anglet3 = anglet3 + radians(45);
      delay(500);
    }
  }

  if ((dist(posxt3, posyt3, mouseX, mouseY)<30)&&(mousePressed)) {
    posxt3=mouseX;
    posyt3=mouseY;
    
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    dibt1();
    fill(202, 129, 255);
    dibRect();
    fill(255, 0, 226);
    push();
    translate(posxt3, posyt3);
    rotate(anglet3);
    triangle(37.5, 37.5, 37.5, -112.5, -112.5, 37.5);
    pop();
  } else {
      push();
      translate(posxt3, posyt3);
      rotate(anglet3);
      triangle(37.5, 37.5, 37.5, -112.5, -112.5, 37.5);
      pop();
    }
} 

//dibujar triangulo grande 4 t4
void dibt4() {
  if ((dist(posxt4, posyt4, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      anglet4 = anglet4 + radians(45);
      delay(500);
    }
  }

  if ((dist(posxt4, posyt4, mouseX, mouseY)<30)&&(mousePressed)) {
    posxt4=mouseX;
    posyt4=mouseY;
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    dibt1();
    fill(202, 129, 255);
    dibRect();
    fill(255, 0, 226);
    dibt3();
    fill(0, 255, 0);
    push();
    translate(posxt4, posyt4);
    rotate(anglet4);
    triangle(-150, -75, 150, -75, 0, 75);
    pop();
  } else {
      push();
      translate(posxt4, posyt4);
      rotate(anglet4);
      triangle(-150, -75, 150, -75, 0, 75);
      pop();
    }
} 

//dibujar triangulo grande 5 t5
void dibt5() {
  if ((dist(posxt5, posyt5, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      anglet5 = anglet5 + radians(45);
      delay(500);
    }
  }

  if ((dist(posxt5, posyt5, mouseX, mouseY)<30)&&(mousePressed)) {
    posxt5=mouseX;
    posyt5=mouseY;
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    dibt1();
    fill(202, 129, 255);
    dibRect();
    fill(255, 0, 226);
    dibt3();
    fill(0, 255, 0);
    dibt4();
    fill(255, 0, 0);
    push();
    translate(posxt5, posyt5);
    rotate(anglet5);
    triangle(-75, -150, -75, 150, 75, 0);
    pop();
  } else {
      push();
      translate(posxt5, posyt5);
      rotate(anglet5);
      triangle(-75, -150, -75, 150, 75, 0);
      pop();
    }
} 

//Dibujar paralelogramo
void dibpar() {
  if ((dist(posxp, posyp, mouseX, mouseY)<30)&&(keyPressed)) {
    if (key== 'a') {
      if(anglep==PI){
        anglep=0;
      }else{
        anglep = anglep + PI/4;
      }
      delay(500);
    }
  }

  if ((dist(posxp, posyp, mouseX, mouseY)<30)&&(mousePressed)) {
    posxp=mouseX;
    posyp=mouseY;
    background(112, 82, 252);
    noStroke();
    fill(255);
    triangle(450,700, 750,700, 600,550);
    quad(525,625, 675,625, 675,325, 525,325);
    triangle(600,400, 706.066,293.934, 493.934,293.934);
    rect(546.967, 187.860, 106.066, 106.066);
    quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
    stroke(0);
    push();
    fill(82,237,252);
    dibt2();
    fill(0, 0, 255);
    dibt1();
    fill(202, 129, 255);
    dibRect();
    fill(255, 0, 226);
    dibt3();
    fill(0, 255, 0);
    dibt4();
    fill(255, 0, 0);
    dibt5();
    fill(255, 0, 119);
    translate(posxp, posyp);
    rotate(anglep);
    quad(-37.5, -37.5, -112.5, 37.5, 37.5, 37.5, 112.5, -37.5);
    pop();
  }else{
    push();
    translate(posxp, posyp);
    rotate(anglep);
    quad(-37.5, -37.5, -112.5, 37.5, 37.5, 37.5, 112.5, -37.5);
    pop();
  }
}

void Winner(){
  if(dist(posxp, posyp,584.467,112.5)<5 && dist(posxs,posys,600,240.893)<5 && dist(posxt3,posyt3,600,346.967)<5 && dist(posxt1,posyt1, 562.5,400)<5 && dist(posxt2,posyt2, 562.5,550)<5&& dist(posxt4,posyt4,600,475)<5 && dist(posxt5,posyt5, 600,625)<5){
    win=true;
  }else{
     if(dist(posxp, posyp,584.467,112.5)<5 && dist(posxs,posys,600,240.893)<5 && dist(posxt3,posyt3,600,346.967)<5 && dist(posxt1,posyt1, 562.5,400)<5 && dist(posxt2,posyt2, 562.5,550)<5&& dist(posxt5,posyt5,600,475)<5 && dist(posxt4,posyt4, 600,625)<5){
       win=true;
     }else{
        if(dist(posxp, posyp,584.467,112.5)<5 && dist(posxs,posys,600,240.893)<5 && dist(posxt3,posyt3,600,346.967)<5 && dist(posxt2,posyt2, 562.5,400)<5 && dist(posxt1,posyt1, 562.5,550)<5&& dist(posxt4,posyt4,600,475)<5 && dist(posxt5,posyt5, 600,625)<5){
          win=true;
        }else{
           if(dist(posxp, posyp,584.467,112.5)<5 && dist(posxs,posys,600,240.893)<5 && dist(posxt3,posyt3,600,346.967)<5 && dist(posxt2,posyt2, 562.5,400)<5 && dist(posxt1,posyt1, 562.5,550)<5&& dist(posxt5,posyt5,600,475)<5 && dist(posxt4,posyt4, 600,625)<5){ 
             win=true;
           }else{
             win=false;
            }
         }
      } 
  } 
}  

void dibujo(){
  Winner();
  if(win==true && anglep== PI/2 && angles==PI/4){
    fill(255,0,0);
    rect(50,50,300,300);
    cuadro();
  }else{
   println("false"); 
  }
  
}  

void cuadro(){
  if (win== true){
    textFont(f,30);                  
    fill(254,255,31);                          
    text("YOU WIN",135,200);
  }  
}

void setup() {
  size(800, 700);
  f = loadFont("ComicSansMS-Italic-48.vlw");
  
}

void draw() {
  background(112, 82, 252);
  noStroke();
  fill(255);
  triangle(450,700, 750,700, 600,550);
  quad(525,625, 675,625, 675,325, 525,325);
  triangle(600,400, 706.066,293.934, 493.934,293.934);
  rect(546.967, 187.860, 106.066, 106.066);
  quad(546.967,0, 621.967,75, 621.967,225, 546.967,150);
  stroke(0);
  fill(82,237,252);
  dibt2();
  fill(0, 0, 255);
  dibt1();
  fill(202, 129, 255);
  dibRect();
  fill(255, 0, 226);
  dibt3();
  fill(0, 255, 0);
  dibt4();
  fill(255, 0, 0);
  dibt5();
  fill(255, 0, 119);
  dibpar();
  
  dibujo();
  
}
