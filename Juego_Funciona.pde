Mounstro dragonair;
Mounstro unicornio;
Mounstro oso;
Mounstro charmander;
Mounstro jiglipuff;
PImage bg;
PImage eleccion;
int IDpersonaje = 0;
int IDpersonaje1 = -1;
int IDpersonaje2 = -1;
int cx = 0;
int cy = 0;
int PJ1x = 10;
int PJ1y = 250;
int PJ2x = 800;
int PJ2y = 0;
int xataque=0;
int yataque = 50;
int xvida = 590;
int yvida = 10;
int pantalla = 0;
int numero = 1;
int turno = 1;
//String Elemento[] = {"fuego","agua","aire","tierra"};

//Nombre, vida, ataque, defensa, elemento, dibujo
 void setup()
 {
  dragonair = new Mounstro("dragonair", 100, 10, 15, 3, 0);
  unicornio = new Mounstro("unicornio", 100, 10, 20, 0, 1);
  oso = new Mounstro("oso", 100, 12, 22, 2, 2);
  charmander = new Mounstro("charmander", 100, 20, 15, 3, 3);
  jiglipuff = new Mounstro("jiglipuff", 100, 19, 20, 1, 4);
  bg=loadImage("fondo_brillos.jpg");
  eleccion=loadImage("rosas.jpg");
  
  
  size(1100,570);
  background(185);
}

void draw()
{
  if(pantalla == 0)
    {
      if(key==0)
      {
       
        background(#050505);
        textSize(100); 
        fill(#C10091);
        text("··Mundo brillos··", 190, 200);
        textSize(50); 
        fill(#680DA5);
        text("Presione cualquier tecla []", 260, 300);
        inicio();
      }
      else
      {
        key=0;
        pantalla=1;
      }
    }
    if(pantalla==1)
    {
      
      image(eleccion,0,0);
      //background(#484848);
      fill(#FC0098);
      rect(cx,cy,190,300);
      
      textSize(25); 
      fill(#3B065F);
      text("Moverse para seleccion con -O &-P \nSelecciona con [ENTER]\nPelear con Z,X,C ", 510, 375);
      dragonair.Dibujar(0,0,30,0);
      unicornio.Dibujar(1, 190,-27,0);
      oso.Dibujar(2, 239, 5,0);
      charmander.Dibujar(3, 200, 20, 0);
      jiglipuff.Dibujar(4, 195, -22, 0);
      if(IDpersonaje1==-1)
      {
        textSize(49);
        fill(#F761AA);
        text("Jugador 1", -760, 420);
      }
      if(IDpersonaje2==-2)
      {
        textSize(49);
        fill(#6DE5DC);
        text("Jugador 2", -760, 420);
      }
    }
    if(pantalla==2)
    {
      image(bg,0,0);
      //background(#2C2B2C);
      fill(110,250,165);
      dragonair.Dibujarvida();
      unicornio.Dibujarvida();
      dragonair.Dibujar(IDpersonaje1,PJ1x,PJ1y,1); //personaje,posicion en x, posicion en y, jugador
      unicornio.Dibujar(IDpersonaje2,PJ2x,PJ2y,2);
      if(unicornio.vida>0 && dragonair.vida>0)
      {
        if(key=='z')
        {
          if(turno==1) dragonair.ataque1();
          if(turno==2) unicornio.ataque1();
        }
        if(key=='x')
        {
          if(turno==1) dragonair.ataque2();
          if(turno==2) unicornio.ataque2();
        }
        if(key=='c')
        {
          if(turno==1) dragonair.ataque3();
          if(turno==2) unicornio.ataque3();
        }
      }
      if(dragonair.vida<=0)
      {
        textSize(35); 
        fill(#3F047C);
        text("¡SE ACABÓ!\nPlayer 2 ¡GANADOR!\nPara jugar NUEVAMENTE -R", -250, -100);
      }
      if(unicornio.vida<=0)
      {
        textSize(35); 
        fill(#3F047C);
        text("¡SE ACABÓ!\nPlayer 1 ¡GANADOR! \nPara jugar NUEVAMENTE -R", -250, -100);
      }
    }
}

class Mounstro 
{
  String nombre;
  int vida;
  int ataque;
  int defensa;
  int elemento;
  int dibujo;
  int Jugador;
  
  Mounstro(String nombre_, int vida_, int ataque_,int defensa_, int elemento_, int dibujo_)
  {
    nombre = nombre_;
    vida = vida_;
    ataque = ataque_;
    defensa = defensa_;
    elemento = elemento_;
    dibujo = dibujo_;
  }

void Dibujar(int dibujo_,int x,int y, int jugador)
{
  Jugador=jugador;
  translate(x,y);
 switch(dibujo_)
 {
   case 0: // dragonair
     //translate(x,y);
     noStroke();
      //pushMatrix();
      //translate(720,50);
      //fill(0);
      //textSize(20);
      //text("N", 110,250);
      //scale();
       fill (#000000); //negro
  rect (30, 10, 10, 10);
  rect (120, 10, 10, 10);
  rect (20, 20, 10, 40);
  rect (40, 20, 10, 20);
  rect (110, 20, 10, 20);
  rect (130, 20, 10, 40);
  rect (60,30,40,10);
  rect (50,40,10,30);
  rect (100,40,10,30);
  rect (30,60,10,10);
  rect (120,60,10,10);
  rect (40,70,10,10);
  rect (110,70,10,10);
  rect (10,60,10,20);
  rect (140,60,10,20);
  rect (20,80,10,40);
  rect (30,80,10,10);
  rect (130,80,10,40);
  rect (120,80,10,10);
  rect (40,90,10,20);
  rect (50,100,10,20);
  rect (110,90,10,20);
  rect (100,100,10,20);
  rect (30,110,10,20);
  rect (120,110,10,20);
  rect (40,130,20,10);
  rect (100,130,20,10);
  rect (140,130,20,10);
  rect (40,140,10,10);
  rect (60,140,40,10);
  rect (110,140,30,10);
  rect (160,140,10,10);
  rect (30,150,10,40);
  rect (150,150,10,20);
  rect (140,170,10,10);
  rect (120,180,20,10);
  rect (40,190,20,10);
  rect (100,190,20,10);
  rect (60,200,40,10);

  fill (#FFFFFF); //blanco
  rect (30,20,10,40);
  rect (120,20,10,40);
  rect (40,40,10,30);
  rect (110,40,10,30);
  rect (20,60,10,20);
  rect (30,70,10,10);
  rect (130,60,10,20);
  rect (120,70,10,10);
  rect (70,80,20,10);
  rect (50,90,10,10);
  rect (100,90,10,10);
  rect (50,120,10,10);
  rect (100,120,10,10);
  rect (60,110,40,30);
  rect (120,170,10,10);
  rect (60,150,30,10);
  rect (50,160,50,20);
  rect (50,180,70,10);
  rect (60,190,40,10);


  fill (#F25898); //rosa
  rect (60,40,40,30);
  rect (50,70,60,10);
  rect (40,80,30,10);
  rect (90,80,30,10);
  rect (30,90,10,20);
  rect (120,90,10,20);
  rect (60,90,40,20);
  rect (40,110,10,20);
  rect (110,110,10,20);
  rect (50,140,10,20);
  rect (100,140,10,10);
  rect (140,140,20,10);
  rect (40,150,10,40);
  rect (90,150,60,10);
  rect (100,160,50,10);
  rect (100,170,20,10);
  rect (130,170,10,10);
   break;
   
   case 1: //unicornio
 noStroke();
      //pushMatrix();
      //translate(600,370);
      //background(255);
      //scale(2);
      //morado
  fill(#893aa6);
  rect(10,190,10,40);
  rect(20,190,10,30);
  rect(30,190,10,10);
  rect(240,70,20,10);
  rect(220,80,30,10);
  rect(220,90,20,10);
  
  
  //CUERPO
  fill(0);
  rect(20,230,10,50);
  rect(30,270,30,10);
  rect(50,250,10,20);
  rect(50,180,50,10);
  rect(60,240,10,20);
  rect(70,220,10,30);
  rect(80,240,80,10);
  rect(150,250,10,30);
  rect(160,270,30,10);
  rect(180,230,10,40);
  rect(170,200,10,40);
  rect(150,220,20,10);
  rect(150,170,10,10);
  rect(160,180,10,20);
  rect(170,180,40,10);
  rect(210,170,10,10);
  rect(220,160,10,10);
  rect(230,120,10,40);
  rect(240,90,10,30);
  rect(250,80,20,10);
  rect(260,60,10,20);
  rect(230,60,30,10);
  rect(210,100,30,10);
  rect(220,110,10,10);
  rect(210,80,10,20);
  rect(220,70,20,10);
  rect(200,70,10,10);
  rect(190,60,10,10);
  rect(150,50,40,10);
  rect(140,40,10,10);
  rect(140,20,10,10);
  rect(150,10,30,10);
  rect(180,20,20,10);
  rect(200,30,20,10);
  rect(220,40,10,10);
  rect(230,50,10,10);
  rect(110,30,30,10);
  rect(100,40,10,10);
  rect(90,50,20,10);
  rect(80,60,10,90);
  rect(60,130,20,10);
  rect(110,60,10,10);
  rect(120,70,10,10);
  rect(110,80,10,30);
  rect(120,110,10,10);
  rect(90,90,10,10);
  rect(90,120,10,10);
  rect(90,140,10,10);
  rect(100,100,10,60);
  rect(110,140,10,40);
  rect(60,140,10,40);
  rect(70,170,10,10);
  rect(90,130,10,10);

  //OJO
  rect(160,100,20,40);
  rect(180,90,10,20);
  fill(255); //Brillo
  rect(170,110,5,5);
  
   //COLA
  fill(0);
  rect(-10,230,10,10);
  rect(0,190,10,50);
  rect(10,180,30,10);
  rect(40,190,10,10);
  rect(30,200,10,20);
  rect(20,220,20,10);
  rect(10,230,10,10);
  
  
  //RELLENO BLANCO
  fill(255);
  rect(30,230,10,30);
  rect(40,200,10,60);
  rect(50,190,10,60);
  rect(60,200,10,40);
  rect(70,210,10,10);
  rect(80,210,10,30);
  rect(90,200,10,40);
  rect(100,160,10,80);
  rect(90,150,10,30);
  rect(80,150,10,30);
  rect(70,140,10,30);
  rect(110,180,10,60);
  rect(110,110,10,30);
  rect(110,40,10,20);
  rect(120,40,10,30);
  rect(120,80,10,30);
  rect(120,120,10,90);
  rect(120,220,10,20);
  rect(130,40,10,160);
  rect(130,230,10,10);
  rect(140,50,10,90);
  rect(140,160,10,50);
  rect(140,220,10,20);
  rect(150,60,10,80);
  rect(150,160,10,10);
  rect(150,180,10,40);
  rect(150,230,10,10);
  rect(160,60,10,40);
  rect(160,140,10,40);
  rect(160,200,10,20);
  rect(160,230,10,30);
  rect(170,60,10,40);
  rect(170,140,10,40);
  rect(170,240,10,20);
  rect(180,60,10,30);
  rect(180,110,10,70);
  rect(190,70,10,110);
  rect(200,80,10,100);
  rect(210,110,10,60);
  rect(220,120,10,40);
  
  
  //ROSA 
  fill(#ef6cbc);
  rect(30,260,20,10);
  rect(60,190,40,10);
  rect(70,200,20,10);
  rect(160,260,20,10);
  rect(140,140,20,20);
  rect(230,110,10,10);
  rect(150,20,30,10);
  rect(140,30,60,10);
  rect(150,40,70,10);
  rect(190,50,40,10);
  rect(200,60,30,10);
  rect(210,70,10,10);
  
  //AMARILLO
  fill(#FFF046);
  rect(90,60,10,30);
  rect(100,60,10,40);
  rect(110,70,10,10);
  
  //ESTRELLA
  rect(120,210,10,10);
  rect(130,200,10,30);
  rect(140,210,10,10);
  
  //VERDE
  fill(#3AE5E1);
  rect(90,100,10,20);
   break;
   
   case 2: //oso
    //translate(200,-30);
   noStroke();
      //pushMatrix();
      //translate(380,360);
      //fill(0);
      //textSize(20);
      //text("Q", 250,150);
      //scale(2);
      fill(#010101);//negro
  rect(20,10,70,10);
  rect(20,20,10,40);
  rect(140,10,70,10);
  rect(80,20,10,20);
  rect(140,20,10,20);
  rect(90,30,50,10);
  rect(200,20,10,40);
  rect(30,60,10,10);
  rect(190,60,10,10);
  rect(40,70,10,50);
  rect(180,70,10,50);
  rect(20,110,20,10);
  rect(190,110,20,10);
  rect(20,120,10,20);
  rect(200,120,10,20);
  rect(30,140,30,10);
  rect(170,140,30,10);
  rect(50,150,20,10);
  rect(160,150,20,10);
  rect(40,160,10,40);
  rect(180,160,10,40);
  rect(60,160,40,10);
  rect(130,160,40,10);
  rect(90,170,10,10);
  rect(130,170,10,10);
  rect(100,180,10,20);
  rect(120,180,10,20);
  rect(50,190,10,30);
  rect(170,190,10,30);
  rect(30,200,10,40);
  rect(190,200,10,40);
  rect(60,210,40,10);
  rect(130,210,40,10);
  rect(90,200,10,10);
  rect(130,200,10,10);
  rect(90,220,10,20);
  rect(130,220,10,20);
  rect(100,230,30,10);
  rect(40,240,10,10);
  rect(80,240,10,10);
  rect(140,240,10,10);
  rect(180,240,10,10);
  rect(50,250,30,10);
  rect(150,250,30,10);
  rect(70,80,20,10);
  rect(140,80,20,10);
  rect(60,90,10,30);
  rect(90,90,10,30);
  rect(130,90,10,30);
  rect(160,90,10,30);
  rect(100,120,30,10);
  
  
  fill(#76440c);//CAFE obscuro
  rect(30,20,50,10);
  rect(150,20,50,10);
  rect(30,30,10,30);
  rect(190,30,10,30);
  rect(60,40,110,40);
  rect(70,30,10,10);
  rect(150,30,10,10);
  rect(40,50,20,20);
  rect(170,50,20,20);
  rect(50,70,10,10);
  rect(170,70,10,10);
  rect(50,80,10,60);
  rect(170,80,10,60);
  rect(60,80,10,10);
  rect(160,80,10,10);
  rect(90,80,10,10);
  rect(130,80,10,10);
  rect(100,80,30,40);
  rect(30,120,20,20);
  rect(180,120,20,20);
  rect(60,120,10,30);
  rect(160,120,10,30);
  rect(70,120,10,10);
  rect(150,120,10,10);
  rect(70,140,10,20);
  rect(150,140,10,20);
  rect(80,150,10,10);
  rect(140,150,10,10);
  rect(100,160,30,20);
  rect(50,160,10,30);
  rect(170,160,10,30);
  rect(60,170,10,40);
  rect(160,170,10,40);
  rect(70,170,10,10);
  rect(150,170,10,10);
  rect(70,200,10,10);
  rect(150,200,10,10);
  rect(40,200,10,40);
  rect(180,200,10,40);
  rect(50,220,10,10);
  rect(170,220,10,10);
  rect(70,220,20,10);
  rect(140,220,20,10);
  rect(80,230,10,10);
  rect(140,230,10,10);
 
  fill(#057044);//verde
  rect(70,90,10,20);
  rect(150,90,10,20);
  rect(80,100,10,10);
  rect(140,100,10,10);
  
  fill(#c59866);//cafe claro
  rect(80,130,70,20);
  rect(150,130,10,10);
  rect(70,130,10,10);
  rect(80,120,20,10);
  rect(130,120,20,10);
  rect(90,150,50,10);
  rect(70,180,30,20);
  rect(130,180,30,20);
  rect(80,170,10,10);
  rect(140,170,10,10);
  rect(80,200,10,10);
  rect(140,200,10,10);
  rect(100,200,30,30);
  rect(110,180,10,20);
  rect(50,230,30,20);
  rect(150,230,30,20);
  rect(60,220,10,10);
  rect(160,220,10,10);
  
  fill(#ffffff);//blanco
  rect(80,90,10,10);
  rect(140,90,10,10);
  rect(70,110,20,10);
  rect(140,110,20,10);
  
  fill(#4a2603);// cafe detalles
  rect(40,30,20,20);
  rect(170,30,20,20);
  rect(60,30,10,10);
  rect(160,30,10,10);
  rect(90,20,50,10);
  rect(100,10,10,10);
  rect(120,10,10,10);
   break;
   
    case 3: //charmander
    //translate(200,20);
    
    fill (#050000);//black
  rect(30,80,10,30);
  rect(40,70,10,10);
  rect(40,110,10,10);
  rect(50,50,10,20);
  rect(50,120,10,10);
  rect(60,40,10,10);
  rect(60,120,10,10);
  rect(70,30,10,10);
  rect(70,130,10,10);
  rect(70,160,10,10);
  rect(80,30,10,10);
  rect(80,90,10,20);
  rect(80,130,10,30);
  rect(80,170,10,10);
  rect(90,30,10,10);
  rect(90,80,10,30);
  rect(90,130,10,10);
  rect(90,160,10,20);
  rect(100,30,10,10);
  rect(100,170,10,10);
  rect(110,40,10,10);
  rect(110,140,10,10);
  rect(110,180,10,10);
  rect(120,50,10,20);
  rect(120,130,10,10);
  rect(120,150,10,10);
  rect(120,180,10,20);
  rect(130,70,10,20);
  rect(130,150,10,10);
  rect(130,180,10,10);
  rect(130,200,10,10);
  rect(140,90,10,20);
  rect(140,200,10,10);
  rect(150,110,10,10);
  rect(150,200,10,10);
  rect(150,180,10,10);
  rect(160,120,10,20);
  rect(160,170,10,40);
  rect(170,130,10,50);
  rect(180,70,10,30);
  rect(180,120,10,10);
  rect(180,160,10,10);
  rect(190,40,10,30);
  rect(190,100,10,20);
  rect(190,150,10,10);
  rect(200,30,10,10);
  rect(200,130,10,20);
  rect(210,40,10,10);
  rect(210,100,10,30);
  rect(220,50,10,20);
  rect(220,100,10,10);
  rect(230,70,10,30);
  
  fill(#FF953E);//orange
  rect(40,80,10,30);
  rect(50,70,10,50);
  rect(60,50,10,70);
  rect(70,40,10,90);
  rect(80,40,10,40);
  rect(80,110,10,20);
  rect(90,40,10,40);
  rect(90,110,10,20);
  rect(100,40,10,100);
  rect(110,50,10,90);
  rect(120,70,10,60);
  rect(120,140,10,10);
  rect(130,90,10,60);
  rect(130,160,10,20);
  rect(140,110,10,90);
  rect(150,120,10,60);
  rect(160,140,10,30);
  rect(180,130,10,30);
  rect(190,120,10,30);
  rect(200,110,10,20);
  
  fill (#FFF63E);//yellow
  rect(90,140,10,20);
  rect(100,140,10,30);
  rect(110,150,10,30);
  rect(120,160,10,20);
  rect(200,90,10,20);
  rect(210,80,10,20);
  
  fill (#FFFFFF); //white
  rect(80,80,10,10);
  rect(80,160,10,10);
  rect(130,190,10,10);
  rect(150,190,10,10);
    
   break;
   
   case 4: // jiglipuff  
    //translate(150,-30);
     noStroke();
      //pushMatrix();
      //translate(420,370);
      //background(255);
      //scale();
       fill(#FF6F6F);// rosa fuerte
 rect(40,10,30,10);
  rect(230,10,30,10);
  rect(40,20,20,10);
  rect(70,20,20,10);
  rect(130,20,50,10);
  rect(210,20,20,10);
  rect(250,20,10,10);
  rect(30,30,10,10);
  rect(60,30,10,10);
  rect(90,30,20,20);
  rect(120,30,10,10);
  rect(170,30,10,20);
  rect(200,30,10,20);
  rect(230,30,10,10);
  rect(260,30,10,10);
  rect(30,40,10,10);
  rect(110,40,10,10);
  rect(190,40,10,10);
  rect(190,40,20,10);
  rect(250,40,20,10);
  rect(30,50,10,10);
  rect(110,50,10,10);
  rect(250,50,20,10);
  rect(30,60,10,10);
  rect(110,60,10,10);
  rect(200,60,10,10);
  rect(250,60,20,10);
  rect(30,70,10,20);
  rect(70,70,10,10);
  rect(110,70,10,10);
  rect(160,70,30,10);
  rect(200,70,10,10);
  rect(220,70,10,10);
  rect(250,70,20,10);
  rect(110,80,10,20);
  rect(160,80,20,10);
  rect(190,80,10,10);
  rect(250,80,20,10);
  rect(40,90,10,10);
  rect(160,90,10,10);
  rect(250,90,10,20);
  rect(30,100,20,10);
  rect(120,100,10,20);
  rect(260,100,10,120);
  rect(30,110,10,20);
  rect(70,110,40,10);
  rect(130,110,10,10);
  rect(200,110,40,10);
  rect(60,120,10,10);
  rect(110,120,10,10);
  rect(140,120,10,10);
  rect(190,120,10,10);
  rect(240,120,10,10);
  rect(30,130,10,50);
  rect(50,130,10,10);
  rect(120,130,10,10);
  rect(180,130,10,10);
  rect(250,130,10,10);
  rect(130,140,10,20);
  rect(170,140,10,30);
  rect(270,130,10,60);
  rect(40,150,10,20);
  rect(50,170,10,10);
  rect(120,170,10,10);
  rect(250,170,10,10);
  rect(280,170,10,10);
  rect(10,180,10,10);
  rect(60,180,10,10);
  rect(110,180,10,10);
  rect(180,180,10,10);
  rect(240,180,20,10);
  rect(290,180,10,10);
  rect(70,190,10,40);
  rect(0,190,10,20);
  rect(10,210,40,10);
  rect(30,200,10,10);
  rect(40,220,20,10);
  rect(50,230,10,10);
  rect(60,240,20,10);
  rect(70,250,40,10);
  rect(90,260,30,30);
  rect(120,260,70,10);
  rect(190,250,30,50);
  rect(180,250,10,10);
  rect(80,270,10,10);
  rect(70,280,10,20);
  rect(80,300,10,10);
  rect(100,290,20,10);
  rect(120,280,10,10);
  rect(170,280,20,10);
  rect(180,290,10,10);
  rect(220,280,10,20);
  rect(210,240,10,10);
  rect(220,230,20,20);
  rect(230,220,20,10);
  rect(240,230,10,10);
  rect(240,200,20,20);
  rect(250,190,10,10);
  rect(190,190,50,10);
  rect(270,200,30,20);
  rect(300,190,10,20);
  rect(140,210,10,10);
  rect(160,210,10,10);
  rect(250,220,10,10);
  rect(70,190,40,10);
  
  fill(#ffaca2);//rosa claro
  rect(50,20,10,10);
  rect(40,30,10,10);
  rect(130,30,10,10);
  rect(160,30,10,10);
  rect(250,30,10,10);
  rect(80,40,10,10);
  rect(100,40,10,10);
  rect(120,40,10,10);
  rect(140,40,50,10);
  rect(90,50,10,10);
  rect(140,50,70,10);
  rect(40,60,10,10);
  rect(90,60,10,10);
  rect(140,60,60,10);
  rect(80,70,10,10);
  rect(140,70,20,10);
  rect(190,70,10,10);
  rect(210,70,10,10);
  rect(40,80,10,10);
  rect(60,80,10,10);
  rect(140,80,20,30);
  rect(200,80,40,30);
  rect(170,90,10,20);
  rect(190,90,10,30);
  rect(240,90,10,30);
  rect(160,100,10,20);
  rect(110,110,10,10);
  rect(250,110,10,20);
  rect(50,120,10,10);
  rect(120,120,10,10);
  rect(180,120,10,10);
  rect(130,130,10,10);
  rect(170,130,10,10);
  rect(130,160,10,20);
  rect(40,170,10,10);
  rect(170,170,10,10);
  rect(20,180,10,10);
  rect(50,180,10,10);
  rect(120,180,10,10);
  rect(280,180,10,10);
  rect(50,200,30,20);
  rect(80,210,60,40);
  rect(170,200,40,50);
  rect(210,200,20,30);
  rect(230,200,10,20);
  rect(240,190,10,10);
  rect(40,190,10,20);
  rect(50,190,20,10);
  rect(60,220,20,20);
  rect(140,220,30,40);
  rect(110,250,30,10);
  rect(170,250,10,10);
  rect(170,190,10,10);
  rect(210,230,10,10);
  rect(270,190,10,10);
  rect(10,190,10,10);
  rect(40,70,10,20);
  
  fill(#ffcec5);//rosa super claro
  rect(60,20,10,10);
  rect(230,20,20,10);
  rect(70,30,20,10);
  rect(140,30,20,10);
  rect(210,30,10,20);
  rect(40,40,10,10);
  rect(90,40,10,10);
  rect(130,40,10,10);
  rect(40,50,10,10);
  rect(100,50,10,10);
  rect(120,50,20,10);
  rect(100,60,10,10);
  rect(120,60,20,10);
  rect(90,70,20,10);
  rect(120,70,20,10);
  rect(70,80,40,30);
  rect(120,80,20,20);
  rect(50,90,20,30);
  rect(110,100,10,10);
  rect(130,100,10,10);
  rect(40,110,10,40);
  rect(140,110,20,10);
  rect(180,110,10,10);
  rect(130,120,10,10);
  rect(170,120,10,10);
  rect(40,130,10,70);
  rect(140,130,30,60);
  rect(40,180,10,10);
  rect(130,180,50,10);
  rect(110,190,30,20);
  rect(80,200,10,30);
  rect(20,190,10,20);
  rect(10,200,10,10);
  rect(180,190,10,10);
  rect(280,190,20,10);
  rect(80,280,10,20);
  rect(90,290,10,10);
  rect(80,200,30,10);
  rect(220,30,10,10);
  rect(20,180,10,20);
  rect(30,180,10,20);
  
  fill(#a1340d);//boca
  rect(140,200,10,10);
  rect(160,200,10,10);
  rect(150,210,10,10);
  
  fill(#d63934);//lengua ROJO
  rect(150,200,10,10);
  
  fill(#d1baff);//lila
  rect(70,120,10,10);
  rect(100,120,10,10);
  rect(200,120,10,10);
  rect(230,120,10,10);
  rect(60,130,10,10);
  rect(110,130,10,10);
  rect(190,130,10,10);
  rect(240,130,10,10);
  rect(120,140,10,30);
  rect(250,140,10,30);
  rect(80,170,20,10);
  rect(110,170,10,10);
  rect(180,170,20,10);
  rect(210,170,20,10);
  rect(240,170,10,10);
  rect(100,180,10,10);
  rect(190,180,10,10);
  rect(230,180,10,10);
  
  fill(#7064e0);//morado claro
  rect(70,130,10,10);
  rect(100,130,10,10);
  rect(200,130,10,10);
  rect(230,130,10,10);
  rect(50,140,10,30);
  rect(180,140,10,30);
  rect(100,150,10,30);
  rect(230,150,10,30);
  rect(70,160,10,30);
  rect(200,160,30,10);
  rect(60,170,10,10);
  rect(80,160,20,10);
  
  
  fill(#422fa2);//morado fuerte
  rect(80,130,20,30);
  rect(210,130,20,30);
  rect(100,140,20,10);
  rect(230,140,20,10);
  rect(110,150,10,20);
  rect(240,150,10,20);
  rect(60,160,10,10);
  rect(190,160,10,10);
  rect(70,170,10,10);
  rect(200,170,10,10);
  
  
  fill(#674522);//cafe
  rect(50,30,10,10);
  rect(240,30,10,10);
  rect(50,40,10,10);
  rect(240,40,10,10);
  rect(50,50,10,10);
  rect(240,50,10,10);
  rect(50,60,10,10);
  rect(240,60,10,10);
  rect(50,70,20,10);
  rect(50,80,10,10);
  rect(240,80,10,10);
  rect(230,70,20,10);
  
  fill(#000000);//negro
  rect(60,40,20,10);
  rect(220,40,20,10);
  rect(60,50,30,10);
  rect(210,50,30,10);
  rect(60,60,30,10);
  rect(210,60,30,10);
  rect(180,80,10,30);
  rect(170,110,10,10);
  rect(150,120,20,10);
  rect(140,190,30,10);
  rect(120,270,70,10);
  rect(90,300,20,10);
  rect(120,290,10,10);
  rect(130,280,10,10);
  rect(200,300,30,10);
  rect(230,280,10,20);
  rect(220,250,10,30);
  rect(230,250,10,10);
  rect(240,240,10,10);
  rect(250,230,10,10);
  rect(260,220,10,10);
  
 fill(#fffffb);//BLanco
 rect(80,120,20,10);
 rect(210,120,20,10);
 rect(60,140,20,20);
 rect(190,140,20,20);
 rect(70,180,30,10);
 rect(200,180,30,10);
   break;
   
   
    }//switch
  }//Dibujar
  
  void Dibujarvida()
  {
    int ps=vida;//ps=puntos de vida
    if(Jugador==1)
    {
      fill(#FF00C4);
      rect(15,10,ps*5,50);
    }
    if(Jugador==2)
    {
      fill(#FF00C4);
      rect(xvida,yvida,ps*5,50);
    }
  }
  
  void ataque1()
  {
    int y=(int)random(200);
    int r=(int)random(150);
    int danio=12;        
    int critico = (int)random(200);
    if(critico>=0 && critico<=30) danio=(int)(1.5*danio);
    //______________________________________ataque 1 jugador 1
    if(Jugador==1)
    {
      fill(random(105),0,255);
      ellipse(xataque-700, 50, r, r);
      xataque = xataque+5;
      if(xataque==800)
      {
        xvida=xvida+ danio*5;
        unicornio.vida=unicornio.vida-danio;
        xataque = 0;
        turno=2;
        key = 0;
      }
    }
    //______________________________________ataque 1 jugador 2
    if(Jugador==2)
    {
      fill(random(205),70,140);
      ellipse(xataque, 50, r, r);
      xataque = xataque-5;
      if(xataque==-700)
      {
        key = 0;
        turno=1;
        dragonair.vida=dragonair.vida-danio;
        xataque = 0;
      }
    }
  }
  void ataque2()
  {
    int danio=16;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=20) danio=(int)(1.5*danio);
    fill(20, random(200),110);
    int y1,y2,y3;
    y1=(int)random(25);
    y2=(int)random(25);
    y3=(int)random(25);
    //___________________________ ataque 2 jugador 1
    if(Jugador==1)
    {
      triangle(xataque-700,50+y1,xataque -750,50+y2,xataque-600,50+y3);
      //triangle(-700,50,-800,60,-750,70);
      xataque = xataque + 5;
      if(xataque==750)
      {
        xvida=xvida + danio*5;
        key=0;
        turno=2;
        unicornio.vida=unicornio.vida - danio;
        xataque = 0;
      }
    }
    //______________ataque 2 jugador 2
    if(Jugador==2)
    {
      triangle(xataque,50-y1,xataque-50,50-y2,xataque+30,50-y3);
      //triangle(0,50,10,60,50,70);
      xataque = xataque - 5;
      if(xataque==-700)
      {
        key=0;
        turno=1;
        dragonair.vida=dragonair.vida-danio;
        xataque = 0;
      }
    }
  }
  void ataque3()
  {
    int y=(int)random(30);
    int r=(int)random(30);
    
    int danio=20;        
    int critico = (int)random(100);
    if(critico>=0 && critico<=10) danio=(int)(1.5*danio);
    //Ataque 3 jugador 1
    if(Jugador==1)
    {
      fill(50,100,random(255));
      ellipse(xataque-700, 50+y, r+60, r);
      xataque = xataque+5;
      if(xataque==800)
      {
        key=0;
        turno=2;
        xvida=xvida+danio*5;
        unicornio.vida=unicornio.vida-danio;
        xataque = 0;
      }
    }
    //Ataque 3 Jugador 2
    if(Jugador==2)
    {
      fill(100,50,random(255));
      ellipse(xataque, 50-y, r+60, r);
      xataque = xataque-5;
      if(xataque==-700)
      { 
        key=0;
        turno=1;
        dragonair.vida=dragonair.vida-danio;
        xataque = 0;
      }
    }
    
  }
}//Clase


void inicio()
{
  fill(155,95,240);
  noStroke();
  ellipse(random(400),random(1300), random(100), random(300));
  
}

void keyPressed()//eleccion de personajes
{
  if(pantalla==1)
  {
    if(IDpersonaje >=0 && IDpersonaje<=4)
    {
      if(key=='p')
      {
        if(IDpersonaje==4) return;
        cx=cx+200;
        IDpersonaje = IDpersonaje+1;
        key=0;
      }
      if(key=='o')
      {
        if(IDpersonaje==0) return;
        cx=cx-200;
        IDpersonaje = IDpersonaje-1;
        key=0;
      }
      if(IDpersonaje1==-1)
      {
        if(key=='\n')
        {
          IDpersonaje1 = IDpersonaje;
          IDpersonaje2 = -2;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;          
        }
      }
      if(IDpersonaje2==-2)
      {       
        if(key=='\n')
        {
          IDpersonaje2 = IDpersonaje;
          IDpersonaje = 0;
          cx = 0;
          cy = 0;
          key = 0;  
          pantalla = 2;
        }
      }

    }
  }
  if(pantalla==2)
  {

    if(unicornio.vida<=0 || dragonair.vida<=0)
    {
      if(key=='r')
      {
        pantalla=0;
        
      }
    }
  }
}