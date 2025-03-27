import 'dart:convert';
import 'package:my_todo/models/question.dart';

class TestData {
  static Question getQuestionData(String testType) {
    late Map<String, dynamic> jsonData;

    switch (testType) {
      case 'mbti':
        jsonData = {
          "title": "5초 MBTI I/E 편",
          "question": "친구와 함께 간 미술관 당신이라면",
          "selects": ["말이 많아짐", "생각이 많아짐"],
          "answer": ["당신의 성향은 E", "당신의 성향은 I"]
        };
        break;
      case 'test1':
        jsonData = {
          "title": "당신이 좋아하는 애완동물은",
          "question": "당신이 무인도에 도착했는데 마침 떠내려온 상자를 열었을때 보이는 이것은",
          "selects": ["생존키트", "휴대폰", "텐트", "무인도에서 살아남기"],
          "answer": [
            "당신은 현실주의 동물은 안키운다!!",
            "당신은 늘 함께 있는 걸 좋아하는 강아지가 딱입니다",
            "당신은 같은 공간을 공유하는 고양이",
            "당신은 낭만을 좋아하는 앵무새"
          ]
        };
        break;
      case 'test2':
        jsonData = {
          "title": "당신은 어떤 사랑을 하고 싶나요",
          "question": "목욕을 할때 가장 먼저 비누칠을 하는 곳은",
          "selects": ["머리", "상체", "하체"],
          "answer": [
            "당신은 자만추를 추천해요",
            "당신은 소개팅을 통한 새로운 사람의 소개를 좋아합니다",
            "당신은 길가다가 우연히 지나친 그런 인연을 좋아합니다"
          ]
        };
        break;
      default:
        throw Exception('Unknown test type');
    }

    return Question.fromJson(jsonData);
  }
}
