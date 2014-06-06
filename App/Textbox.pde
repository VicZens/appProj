class Textbox {
  
  String t;
  int XCOR = 224;
  int YCOR = 248;
  int H = 448;
  int W = 496;
  String menu = "White Cell Man\n\n\n\n\n\n\n\n\n\n\n\n" +
  "Welcome!\nClick anywhere to start!";
  String instructions = "You are a white blood cell (WBC).\n" +
  "Your mission is to collect all of the nutrients\n" +
  "(yellow dots) on the board while\navoiding the four viruses.\n" +
  "(Click anywhere to continue)";
  String Level2 = "You’ve encountered a new virus!\n" +
  "Influenza\n" + "Influenza, commonly known as \"the flu\", " +
  "is an infectious disease. The most common symptoms are " +
  "chills, fever, runny nose, sore throat, muscle pains, " +
  "headache (often severe), coughing, weakness/fatigue and " +
  "general discomfort. Although it is often confused with " +
  "other influenza-like illnesses, especially the common " +
  "cold, influenza is a more severe disease caused by a " +
  "different type of virus. Influenza may produce nausea " +
  "and vomiting, particularly in children. Typically, " +
  "influenza is transmitted through the air by coughs or " +
  "sneezes, creating aerosols containing the virus. " +
  "Vaccinations against influenza are usually made " +
  "available to people in developed countries.";
  
  Textbox(int level) {
    if (level == 0) {
      t = menu;
    } else if (level == 1) {
      t = instructions;
    }
  }
  
  void display() {
    fill(255);
    textSize(20);
    rectMode(RADIUS);
    textAlign(CENTER, CENTER);
    text(t, XCOR, YCOR, H, W);
  }

}
