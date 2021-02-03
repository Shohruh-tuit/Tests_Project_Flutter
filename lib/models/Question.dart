import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({@required this.title, @required this.answers});
}

class QuestionData {
  final _data = [
    Question(title: '“Neolit”- tushunchasini fanga kim olib kirgan?', answers: [
      {'answer': 'L. Liki'},
      {'answer': 'Lebbok'},
      {'answer': 'Blek', 'isCorrect': 1},
      {'answer': 'Ye. Dyubua'},
    ]),
    Question(
        title:
            'Quyidagi javoblardan Urartu hukmdorlari to‘g‘ri berilgan qatorni aniqlang.',
        answers: [
          {'answer': 'Aramu, Sarduri I, Ishpuin, Menua'},
          {'answer': 'Aramu, Sarduri I, Menua, Tiglatpalasar'},
          {'answer': 'Aramu, Tiglatpalasar I, Menua, Ishpuin', 'isCorrect': 1},
          {'answer': 'Menua, Sarduri I, Ishpuin, Sargon'},
        ]),
    Question(
        title:
            'Demos va xalq yig‘ini Periklni 15-yil surunkasiga birinchi strateg lavozimiga saylagan. Buning sababi nimada?',
        answers: [
          {'answer': 'Periklning boy zodagon qatlamga mansubligida'},
          {'answer': 'Afina harbiy qo‘shinini kuchaytirganligida'},
          {
            'answer': 'Spartani Afina ittifoqiga qo‘sha olganligi sababli',
            'isCorrect': 1
          },
          {
            'answer':
                'u ko‘p hollarda Attika demosi manfaatlarini ko‘zlab ish tutar edi.'
          },
        ]),
    Question(
        title:
            'Miloddan avvalgi VI asrda Baqtriya va So‘g‘diyona qaysi davlat tarkibiga kirgan?',
        answers: [
          {'answer': 'Xorazm davlatiga'},
          {'answer': 'Parfiya podsholigiga'},
          {'answer': 'Ahmoniylar davlatiga', 'isCorrect': 1},
          {'answer': 'Midiya davlatiga'},
        ]),
    Question(
        title:
            'Markaziy Osiyo aholisi ilk temir davriga olgan vaqtni aniqlang.',
        answers: [
          {'answer': 'Miloddan avvalgi VII-VI asrlar'},
          {'answer': 'Miloddan avvalgi 1-mingyillik boshlari'},
          {'answer': 'Miloddan avvalgi 1-mingyillikning oxiri', 'isCorrect': 1},
          {'answer': 'Miloddan avvalgi 2-mingyillik'},
        ]),
  ];

  List<Question> get questions => [..._data];
}
