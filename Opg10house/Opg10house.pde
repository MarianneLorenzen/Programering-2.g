//lav et rum //<>// //<>// //<>//
Room [] house = new Room[6];          // her deklereser datatypen room med en sted den skal placeres.

void setup() {
  size(800, 800);
  background(205);
}

void draw() {
  // tegn taget
  house.drawRoof();
  // tegn rum
  house.drawRoom();
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);

  // find ud af om vi tænder eller slukker lyset
  if (house.isRoomClicked(mouseX, mouseY))
    if (house.light) {
      house.setLight(false);
      text("Turning off the light in "+house.getRoomName(), 100, 700);
    } else {
      house.setLight(true);
      text("Turning on the light in "+house.getRoomName(), 100, 700);
    }
}
