Generator generator = new Generator();
char charArray[] = new char[600];
String characters = "array.txt";
int charInArray = 0;
String biem = "biem.txt";
String stringArray[] = new String[600];
String stringFakeArray[] = new String[1];
String brushtxt = "loop pad";
char brush = 'b';
boolean mouseDown = false;

void setup() {

  size(1050, 900);
  frameRate(1000);
  loadAssets();

  for (int i = 0; i < 600; i++) {

    charArray[i] = 'a';
  }
}

void draw() {

  if (mouseDown) {

    brushTouch();
  }

  background(255);
  generator.draw();


  fill(0);
  textSize(40);
  text("Brush: " + brushtxt, 30, 750);
  textSize(15);
  text("f = muur / d = loop pad / s = midden van beweegbare muur / a = bewegende gedeelte van de muur / g = finish / ", 30, 800);//TODO: de placeholder texst veranderen in text die laat zien op welke knop je moet klikken voor welke brush
  text("h = don deur / j = cor muur(hor) / 1 = don start / 2 = cor startpunt / e = cor muur(vert) / w = cor knop", 30, 820);
  text("q = don knop / c = cor deur / x = don deur", 30, 840);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void brushTouch() {

  if (mouseX < 1050 && mouseX > 0 && mouseY > 0 && mouseY < 700) {

    int gridX = mouseX / 35 ;
    int gridY = mouseY / 35 ;

    println(gridX);
    println(gridY);

    charInArray = gridY * 30 + gridX;



    charArray[charInArray] = brush;
  }
}

void mousePressed() {

  mouseDown = true;
}

void mouseReleased() {

  mouseDown = false;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void keyPressed() {

  switch (key) {

  case 'f' : 
    brush = 'a'; 
    brushtxt = "muur"; 
    break;
  case 'd' : 
    brush = 'b'; 
    brushtxt = "loop pad"; 
    break;
  case 's' : 
    brush = 'w'; 
    brushtxt = "midden van beweegbare muur"; 
    break;
  case 'a' : 
    brush = 'v'; 
    brushtxt = "bewegende gedeelte van beweegbare muur"; 
    break;
  case 'g' : 
    brush = 'f'; 
    brushtxt = "finish"; 
    break;
  case 'h' : 
    brush = 'd'; 
    brushtxt = "don deur"; 
    break;
  case 'j' : 
    brush = 's'; 
    brushtxt = "cor muur(hor)"; 
    break;
  case '1' : 
    brush = '1'; 
    brushtxt = "don"; 
    break;
  case '2' : 
    brush = '2'; 
    brushtxt = "cor"; 
    break;
  case 'e' : 
    brush = 't'; 
    brushtxt = "cor muur(vert)"; 
    break;    
  case 'w' : 
    brush = 'p'; 
    brushtxt = "cor knop"; 
    break;
  case 'q' : 
    brush = 'o'; 
    brushtxt = "don knop"; 
    break;
  case 'c' : 
    brush = 'k'; 
    brushtxt = "cor deur"; 
    break;
  case 'x' : 
    brush = 'l'; 
    brushtxt = "don deur"; 
    break;
  }

  if (key == 'p') {

    for (int i = 0; i < 600; i++) {

      if (i % 30 == 0 && i != 0) {

        stringArray[i] = str(charArray[i]);
        stringFakeArray[0] = stringFakeArray[0] + "'}, {'" + stringArray[i];
      } else {

        stringArray[i] = str(charArray[i]);
        stringFakeArray[0] = stringFakeArray[0] + "', '" + stringArray[i];
      }
    }

    saveStrings(biem, stringFakeArray);
  }
}
