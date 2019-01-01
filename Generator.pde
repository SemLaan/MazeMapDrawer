

class Generator {

  int x;
  int y;

  Generator() {

    x = 0;
    y = 0;
  }

  void draw() {
    /**
     Here are the array's for the diffrent mazes
     a = WALL
     b = PATH
     f = FINISH
     d = DOOR
     w = MOVEABLE WALL MID
     v = MOVEABLE WALL SIDE
     s & t = SMALL HALLWAY
     1 = START CHAR1
     2 = START CHAR2
     p = COR KNOP
     o = DON KNOP
     k = COR DEUR GEACTIVEERD DOOR KNOP
     l = DON DEUR GEACTIVEERD DOOR KNOP
     
     
     */
    for (int i = 0; i < 600; i++) {

      x = (i % 30) * 35;
      y = (int) (i / 30) * 35;

      if (charArray[i] == 'a') {

        image(wall, x, y, 35, 35);
      } else if (charArray[i] == 'b') {

        image(path, x, y, 35, 35);
      } else if (charArray[i] == 'w') {

        image(moveableWall, x, y, 35, 35);
      } else if (charArray[i] == 'v') {

        image(moveableWall, x, y, 35, 35);
      } else if (charArray[i] == 'f') {

        image(finish, x, y, 35, 35);
      } else if (charArray[i] == 'd') {

        image(door, x, y, 35, 35);
      } else if (charArray[i] == 's') {

        image(smallHallwayHoriz, x, y, 35, 35);
      } else if (charArray[i] == '1') {

        fill(255);
        ellipse(x+17.5, y+17.5, 34, 34);
      } else if (charArray[i] == '2') {

        fill(255);
        ellipse(x+17.5, y+17.5, 15, 15);
      } else if (charArray[i] == 't') {

        image(smallHallwayVert, x, y, 35, 35);
      } else if (charArray[i] == 'p') {

        fill(200, 0, 0);
        rect(x, y, 35, 35);
      } else if (charArray[i] == 'o') {

        fill(0, 200, 0);
        rect(x, y, 35, 35);
      } else if (charArray[i] == 'k') {

        fill(0, 100, 0);
        rect(x, y, 35, 35);
      } else if (charArray[i] == 'l') {

        fill(0, 100, 0);
        rect(x, y, 35, 35);
      }
    }
  }
}
