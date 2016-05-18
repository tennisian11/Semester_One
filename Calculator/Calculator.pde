CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[7];
CalcButton[] spButtons = new CalcButton[1];
String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opValue;
boolean firstNum;

void setup() {
  size(400, 330);
  background(50, 55, 55);
  frameRate(10);
  fill(#C61616);
  strokeWeight(3);
  stroke(200);
  rect(1, 1, 397, 397);

  numButtons[0] = new CalcButton(10, 275).asNumber(0, 100, 45);
  numButtons[1] = new CalcButton(10, 220).asNumber(1, 45, 45);
  numButtons[2] = new CalcButton(65, 220).asNumber(2, 45, 45);
  numButtons[3] = new CalcButton(120, 220).asNumber(3, 45, 45);
  numButtons[4] = new CalcButton(10, 165).asNumber(4, 45, 45);
  numButtons[5] = new CalcButton(65, 165).asNumber(5, 45, 45);
  numButtons[6] = new CalcButton(120, 165).asNumber(6, 45, 45);
  numButtons[7] = new CalcButton(10, 110).asNumber(7, 45, 45);
  numButtons[8] = new CalcButton(65, 110).asNumber(8, 45, 45);
  numButtons[9] = new CalcButton(120, 110).asNumber(9, 45, 45);
  opButtons[0] = new CalcButton(350, 165).asOperator("+", 45, 45);
  opButtons[1] = new CalcButton(10, 55).asOperator("C", 45, 45);
  opButtons[2] = new CalcButton(350, 225).asOperator("=", 45, 100);
  opButtons[3] = new CalcButton(350, 55).asOperator("*", 45, 45);
  opButtons[4] = new CalcButton(350, 110).asOperator("-", 45, 45);
  opButtons[5] = new CalcButton(65, 55).asOperator("+/-", 45, 45);
  opButtons[6] = new CalcButton(120, 55).asOperator("/", 45, 45);
  spButtons[0] = new CalcButton(120, 275).asSpecial(".", 45, 45);
  firstNum = true;
}

void draw() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].click(mouseX, mouseY);
  }
  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].display();
    spButtons[i].click(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].click(mouseX, mouseY);
  }
  updateDisplay();
}
void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton inumButton = numButtons[i];
    inumButton.click(mouseX, mouseY);
    if (inumButton.overBox) {
      if (firstNum) {
        println(i + " " + inumButton.numButtonValue);
        valueToCompute += int(inumButton.numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(inumButton.numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<spButtons.length; i++) {
    spButtons[i].click(mouseX, mouseY);
    if (spButtons[i].overBox) {
      if (spButtons[i].spButtonValue == ".") {
        if (spButtons[i].overBox && firstNum == true) {
          valueToCompute += spButtons[i].spButtonValue;
          displayValue = valueToCompute;
        } else if (spButtons[i].overBox && firstNum == false) {
          valueToCompute2 += spButtons[i].spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    }
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].click(mouseX, mouseY);
    if (opButtons[i].overBox) { 
      if (opButtons[i].opButtonValue == "C") {
        displayValue = "0";
        opValue = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI = 0;
        result = 0;
        firstNum = true;
    performCalculation();
      } else if (opButtons[i].opButtonValue == "=") {
        //   Perform calculation
        firstNum = true;
        performCalculation();
      } else if (opButtons[i].opButtonValue == "+") {
        if (result != 0) {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      } else if (opButtons[i].opButtonValue == "-") {
        if (result != 0) {
          opValue = '-';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
      } else if (opButtons[i].opButtonValue == "*") {
        if (result != 0) {
          opValue = '*';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "*";
        } else {
          opValue = '*';
          firstNum = false;
          displayValue = "*";
        }
      } else if (opButtons[i].opButtonValue == "/") {
        if (result != 0) {
          opValue = '/';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "/";
        } else {
          opValue = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButtons[i].opButtonValue == "+/-") {
        opValue = 'n';
        performCalculation();
      }
    }
  }
}
void performCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } 
  if (opValue == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '*') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == 'n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str(valueToComputeI);
    }
  }
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}

void updateDisplay() {
  fill(255);
  rect(10, 10, 380, 40, 7);
  fill(0);
  textSize(25);
  text(displayValue, 20, 40);
}