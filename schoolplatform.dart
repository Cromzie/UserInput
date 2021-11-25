import "dart:io";

// ASSIGNMENT
// User types in name, a student wants to visit the website, the user has three choices of school, (Obafemi Awolowo University, Lagos State University, University of Lagos.), the user selects a school, it displays information about the school selected, then do you want to visit another school, it brings the option of the three schools until the user types no..

void collegeInfo(String schoolName,) {
  print('''Hey,
              welcome to $schoolName, the most prestigious uni in Africa.
              Over the years, we have retained our position as the foremost university with the best students.
              I welcome you for taking the first step. Goodluck as you navigate through the website. ''');

  print('Do you wish to visit another school? Y for Yes or N for No');

  String choice = stdin.readLineSync() ?? '0';
  if (choice == 'Y') {
    ask_again();
  } else {
    print('Alright, cheers!');
  }
}

void no_selection_made() {
  print(
      'You are yet to select from the available options: \n O for Obafemi Awolowo University. \n L for Lagos State University. \n U for University of Ibadan.');

  String ? nul = stdin.readLineSync();
}
void ask_again() {
  print(
      'Hi there, what school would you like to visit again? Press: \n O for Obafemi Awolowo University. \n L for Lagos State University. \n U for University of Lagos.');
  String? school = stdin.readLineSync() ?? '0';
  if (school == 'O') {
    collegeInfo('Obafemi Awolowo University, Ile-Ife');
  } else if (school == 'L') {
    collegeInfo('The Lagos State University');
  } else if (school == 'U') {
    collegeInfo('The University of Lagos');
  }
}

void main() {
  print('Welcome there!, what is your name?');

  String? name = stdin.readLineSync() ?? '0';
  
  print(
      'Hi $name, what school would you like to visit? Press: \n O for Obafemi Awolowo University. \n L for Lagos State University. \n U for University of Lagos.');

  String? school = stdin.readLineSync() ?? '0';

  if (school == 'O') {
    collegeInfo('Obafemi Awolowo University, Ile-Ife');
  } else if (school == 'L') {
    collegeInfo('The Lagos State University');
  } else if (school == 'U') {
    collegeInfo('The University of Lagos');
  } else {
    no_selection_made();
    ask_again();
  }

}
