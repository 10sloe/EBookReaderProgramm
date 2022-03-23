class EBook
{
  private String titel;
  private String autor;
  private String ersteSeite;
  
  EBook(String titel_, String autor_, String ersteSeite_)
  {
    titel = titel_;
    autor = autor_;
    ersteSeite = ersteSeite_;
  }
  
  void infosAusgeben()
  {
    println("Titel: " + titel);
    println("Autor: " + autor);
  }
  
  void anzeigenKlein(int x, int y,int breite, int hoehe)
  {
    fill(255);
    rect(x,y,breite,hoehe);
    fill(0);
    text(titel, x + 20, y + 40);
    text(autor, x + 20, y + 60);
  }
  
  void anzeigen(int x,int y,int breite,int hoehe)
  {
    fill(255);
    rect(x,y,breite,hoehe);
    fill(0);
    text(titel + " | " + autor , x + 20, y + 40);
    ersteSeite(x+20, x+100);
  }
  
  String getAutor()
  {
    return autor;
  }
  
  String getTitel()
  {
    return titel;
  }
  
  void ersteSeite(int x, int y)
  {
    text(ersteSeite, x, y);
  }
    
}
