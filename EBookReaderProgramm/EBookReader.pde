class EBookReader
{
  private EBook buch1;
  private EBook buch2;

  String zustand;

  EBookReader()
  {
    buch1 = new EBook("Harry Potter", "J.K. Rowling", "Mr und Mrs Dursley im Ligusterweg 4 waren ...");
    buch2 = new EBook("Herr der Ringe", "Tolkien","Als Herr Bilbo Beutlin von Beutelsend ... ");
    zustand = "uebersicht";
  }

  void infosAusgeben()
  {
    println("Meine Buecher: ");
    buch1.infosAusgeben();
    buch2.infosAusgeben();
  }
  
  void zeichnen()
  {
    fill(0);
    rect(10, 10, 380, 580, 20);
    if (zustand.equals("uebersicht"))
    {
      
      fill(200);
      rect(50, 50, 300, 500, 2);
      buch1.anzeigenKlein(60, 60, 110, 150);
      buch2.anzeigenKlein(190, 60, 110, 150);
    }
    
    if (zustand.equals("buch1"))
    {
      buch1.anzeigen(50,50,300,500);
    }
    if (zustand.equals("buch2"))
    {
      buch2.anzeigen(50,50,300,500);
    }
    fill(255);
    rect(255,500,80,30);
    fill(0);
    text("Uebersicht",265,515);
  }

  void mausGedrueckt(int x, int y)
  {
    if (zustand.equals("uebersicht"))
    {
      if (x >= 60 && x <= 170 && y >= 60 && y <= 210)
      {
        zustand = "buch1";
      }
      if (x >= 190 && x <= 300 && y >= 60 && y <= 210)
      {
        zustand = "buch2";
      }
      
    }
    else
    {
      if (x >= 255 && x <= 335 && y >= 500 && y <= 530)
      {
        zustand = "uebersicht";
      }
    }
  }
}
