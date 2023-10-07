// import 'dart:io';
// import 'dart:math';

// void main() {
//   final Map<String, bool> questions = {
//     'Question 1: Dart is a statically-typed language.': true,
//     'Question 2: Flutter is a framework for web development.': false,
//     // Add more questions here
//   };

//   final List<String> questionKeys = questions.keys.toList();
//   final List<int> randomIndices = generateRandomIndices(questionKeys.length);

//   int correctAnswers = 0;

//   for (int i = 0; i < randomIndices.length; i++) {
//     final int index = randomIndices[i];
//     final String question = questionKeys[index];

//     print(question);
//     final String answer = stdin.readLineSync()!;

//     if (answer.toLowerCase() == 'true' && questions[question] == true) {
//       correctAnswers++;
//     } else if (answer.toLowerCase() == 'false' && questions[question] == false) {
//       correctAnswers++;
//     }
//   }

//   final double percentage = (correctAnswers / questionKeys.length) * 100;
//   final String message = percentage > 50
//       ? 'Congratulations! You got $correctAnswers out of ${questionKeys.length} questions correct.'
//       : 'You got $correctAnswers out of ${questionKeys.length} questions correct. Keep practicing!';

//   print('\nQuiz Result:');
//   print('Total Correct Answers: $correctAnswers');
//   print('Percentage: ${percentage.toStringAsFixed(2)}%');
//   print(message);
// }

// List<int> generateRandomIndices(int length) {
//   final List<int> indices = List.generate(length, (index) => index);
//   indices.shuffle();
//   return indices;
// }

import 'dart:io';
import 'dart:math';

// class Quiz {
//   final Map<String, bool> questions;
//   late List<String> questionKeys; // Mark as 'late'

//   int correctAnswers = 0;

//   Quiz(this.questions) {
//     questionKeys = questions.keys.toList()..shuffle();
//   }

//   void start() {
//     for (int i = 0; i < questionKeys.length; i++) {
//       final String question = questionKeys[i];

//       print('$question: (true/false)');
//       final String answer = stdin.readLineSync() ?? '';

//       if (answer.toLowerCase() == 'true' && questions[question] == true) {
//         correctAnswers++;
//       } else if (answer.toLowerCase() == 'false' && questions[question] == false) {
//         correctAnswers++;
//       }
//     }
//   }

//   void displayResult() {
//     final double percentage = (correctAnswers / questionKeys.length) * 100;
//     final String message = percentage > 50
//         ? 'Congratulations! You got $correctAnswers out of ${questionKeys.length} questions correct.'
//         : 'You got $correctAnswers out of ${questionKeys.length} questions correct. Keep practicing!';

//     print('\nQuiz Result:');
//     print('Total Correct Answers: $correctAnswers');
//     print('Percentage: ${percentage.toStringAsFixed(2)}%');
//     print(message);
//   }
// }

// void main() {
//   final Map<String, bool> questions = {
//     'Question 1: Dart is a statically-typed language.': true,
//     'Question 2: Flutter is a framework for web development.': false,
//     // Add more questions here
//   };

//   final Quiz quiz = Quiz(questions);
//   quiz.start();
//   quiz.displayResult();
// }

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;
  Question(this.question, this.options, this.correctAnswer);
}

class QuizApp {
  List<Question> questions;
  int score = 0;
  QuizApp(this.questions);
  startQuiz() {
    print('Welcome to the Quiz App!\n');
    // display random question
    questions.shuffle();
    // shuffle the options in _questions
    for (var q in questions) {
      q.options.shuffle();
    }
    for (int i = 0; i < questions.length; i++) {
      print('Question ${i + 1} ${questions[i].question}');
      for (var j = 0; j < questions[i].options.length; j++) {
        print('${j + 1} : ${questions[i].options[j]}');
      }
      stdout.write('Your answer : ');
      final userAnswer = stdin.readLineSync()!;
      if (userAnswer != null) {
        if (userAnswer.toLowerCase() ==
            questions[i].correctAnswer.toLowerCase()) {
          print('Correct!\n');
          score++;
        } else {
          print(
              'Incorrect. The correct answer is: ${questions[i].correctAnswer}\n');
        }
      } else {
        print('Invalid input. Skipping this question.\n');
      }
    }
    print('Quiz completed!');
    print('Your score: $score out of ${questions.length}');
  }
}

void main() {
  final questions = [
    Question('What is the capital of France?',
        ['Berlin', 'Madrid', 'Paris', 'Rome'], 'Paris'),
    Question('Which planet is known as the "Red Planet"?',
        ['Venus', 'Mars', 'Jupiter', 'Saturn'], "Mars"),
    Question(
        'Who wrote the play "Romeo and Juliet?',
        ['Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain'],
        'William Shakespeare'),
    Question('What is the largest mammal in the world?',
        ['Elephant', 'Polar Bear', 'Giraffe', 'Blue Whale'], "Giraffe"),
    Question(
        'Which programming language is often used for building Android apps?',
        ['Java', 'Python', 'C#', 'Ruby'],
        'Java'),
    Question('What is the chemical symbol for gold?', ['Gu', 'Gl', 'Au', 'Ag'],
        "Au"),
    Question('Which country is famous for the Great Wall?',
        ['India', 'Pakistan', 'America', 'China'], 'China'),
    Question(
        'Which gas do plants absorb from the atmosphere during photosynthesis?',
        ['Oxygen', "Carbon Dioxide", 'Hydrogen', 'Nitrogen'],
        "Carbon Dioxide"),
    Question(
        'Who is known as the inventor of the telephone?',
        [
          'Alexander Graham Bell',
          'Thomas Edison',
          'Nikola Tesla',
          'Albert Einstein'
        ],
        "Alexander Graham Bell"),
    // Add more questiions here
    Question('What is the largest organ in the human body?',
        ['Heart', 'Brain', 'Liver', 'Skin'], 'Skin'),
    Question('In which year did Christopher Columbus first reach the Americas?',
        [' 1492', '1620', '1776'], '1492'),
    Question('Which of the following is a primary color?',
        ['Green', 'Orange', 'Purple'], 'Green'),
    Question('What is the chemical formula for water?',
        ['H2O', 'CO2', 'CH4', 'O2'], 'H2O'),
    Question('Which continent is known as the "Land Down Under"?',
        ['Africa', 'Asia', 'Europe', 'North America'], 'South America'),
    Question(
        'What is the largest ocean in the world?',
        [
          'Indian Ocean',
          'Pacific Ocean',
        ],
        'Pacific Ocean'),
    Question(
        'Who is the author of the Harry Potter book series?',
        [
          'J.R.R. Tolkien',
          'George Orwell',
          'Roald Dahl',
          'J.K. Rowling',
        ],
        'J.K. Rowling'),
    Question('What is the hexadecimal equivalent of decimal number 10?',
        ['a', 'b', 'c', 'd'], 'd'),
    Question('How many letters are there on an American keyboard?',
        ['65', '789', '34', '23'], '34'),
    Question('The first letter of the alphabet was invented by which country?',
        ['Germany', 'France', 'Italy', 'Spain'], 'Italy'),
    Question('What is the sum of 1+2+3+4+5?', ['10', '15', '20', '2'], '15'),
    Question('What is the product of 2*3*4*5?', ['120', '15', '20', '2'], '120')
  ];
  final quiz = QuizApp(questions);
  quiz.startQuiz();
}
