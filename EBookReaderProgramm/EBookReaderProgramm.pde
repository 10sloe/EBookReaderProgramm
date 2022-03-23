EBookReader reader;

void setup()
{
  size(400,600);
  reader = new EBookReader();
  reader.infosAusgeben();
}

void draw()
{
  background(255);
  reader.zeichnen();
}

void mousePressed()
{
  reader.mausGedrueckt(mouseX, mouseY);
}
