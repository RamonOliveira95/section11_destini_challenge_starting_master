//Step 6 - import the story.dart file into this file.
import 'package:section11_destini_challenge_starting_master/story.dart';

//Step 5 - Create a new class called StoryBrain.
class StoryBrain {
//Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

  final List<Story> _storyData = [
    Story(
      storyTitle:
          'Seu carro estourou um pneu em uma estrada sinuosa no meio do nada sem sinal de celular. Você decide pedir carona. Uma caminhonete enferrujada para perto de você. Um homem de chapéu de abas largas e olhos sem alma abre a porta do carona para você e pergunta: "Precisa de carona, rapaz?".',
      choice1: 'Vou aceitar. Obrigado pela ajuda!',
      choice2: 'Melhor perguntar se ele é um assassino primeiro.',
    ),
    Story(
      storyTitle: 'Ele balança a cabeça lentamente, indiferente à pergunta.',
      choice1: 'Pelo menos ele é honesto. vou subir.',
      choice2: 'Espere, eu sei como trocar um pneu.',
    ),
    Story(
      storyTitle:
          'Quando começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John.',
      choice1: 'Eu amo Elton John! Entregue a ele a fita cassete.',
      choice2: 'É ele ou eu! Você pega a faca e o esfaqueia.',
    ),
    Story(
      storyTitle:
          'O que? Que policial fora! Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental na maioria das faixas etárias adultas?',
      choice1: 'Reiniciar',
      choice2: '',
    ),
    Story(
      storyTitle:
          'Enquanto você quebra o guardrail e se inclina para as rochas irregulares abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto ele está dirigindo o carro em que você está.',
      choice1: 'Reiniciar',
      choice2: '',
    ),
    Story(
      storyTitle:
          'Você se relaciona com o assassino enquanto canta versos de "Can you feel the love tonight". Ele te deixa na próxima cidade. Antes de você ir, ele pergunta se você conhece algum bom lugar para despejar corpos. Você responde: "Experimente o cais".',
      choice1: 'Reiniciar',
      choice2: '',
    ),
  ];

//Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoise2() {
    return _storyData[_storyNumber].choice2;
  }
//Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;
//Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiseNumber) {
//Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
    if (choiseNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiseNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiseNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiseNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiseNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiseNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
//Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  int restart() {
    return _storyNumber = 0;
  }

//Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3
//Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
