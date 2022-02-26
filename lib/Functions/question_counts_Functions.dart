import '../models/survey_model.dart';

class QuestionsCount{

  // Contain Function for each question to count answers for each questions
  // and contain function return list for all questions functions.

  static Map<String , double> getFirstQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].firstQuestion==0){
        verySadCounter++ ;
      } if(data[i].firstQuestion == 1){
        sadCounter++;
      }if(data[i].firstQuestion == 2){
        medCounter++;
      }if(data[i].firstQuestion == 3){
        happyCounter++;
      }if(data[i].firstQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;

  }

  static Map<String , double> getSecondQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].secondQuestion==0){
        verySadCounter++ ;
      } if(data[i].secondQuestion == 1){
        sadCounter++;
      }if(data[i].secondQuestion == 2){
        medCounter++;
      }if(data[i].secondQuestion == 3){
        happyCounter++;
      }if(data[i].secondQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getThirdQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].thirdQuestion==0){
        verySadCounter++ ;
      } if(data[i].thirdQuestion == 1){
        sadCounter++;
      }if(data[i].thirdQuestion == 2){
        medCounter++;
      }if(data[i].thirdQuestion == 3){
        happyCounter++;
      }if(data[i].thirdQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getFourthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].fourthQuestion==0){
        verySadCounter++ ;
      } if(data[i].fourthQuestion == 1){
        sadCounter++;
      }if(data[i].fourthQuestion == 2){
        medCounter++;
      }if(data[i].fourthQuestion == 3){
        happyCounter++;
      }if(data[i].fourthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getFifthQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].fifthQuestion==0){
        verySadCounter++ ;
      } if(data[i].fifthQuestion == 1){
        sadCounter++;
      }if(data[i].fifthQuestion == 2){
        medCounter++;
      }if(data[i].fifthQuestion == 3){
        happyCounter++;
      }if(data[i].fifthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getSixthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].sixthQuestion==0){
        verySadCounter++ ;
      } if(data[i].sixthQuestion == 1){
        sadCounter++;
      }if(data[i].sixthQuestion == 2){
        medCounter++;
      }if(data[i].sixthQuestion == 3){
        happyCounter++;
      }if(data[i].sixthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getSeventhQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].seventhQuestion==0){
        verySadCounter++ ;
      } if(data[i].seventhQuestion == 1){
        sadCounter++;
      }if(data[i].seventhQuestion == 2){
        medCounter++;
      }if(data[i].seventhQuestion == 3){
        happyCounter++;
      }if(data[i].seventhQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getEighthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].eighthQuestion==0){
        verySadCounter++ ;
      } if(data[i].eighthQuestion == 1){
        sadCounter++;
      }if(data[i].eighthQuestion == 2){
        medCounter++;
      }if(data[i].eighthQuestion == 3){
        happyCounter++;
      }if(data[i].eighthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getNinthQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].ninthQuestion==0){
        verySadCounter++ ;
      } if(data[i].ninthQuestion == 1){
        sadCounter++;
      }if(data[i].ninthQuestion == 2){
        medCounter++;
      }if(data[i].ninthQuestion == 3){
        happyCounter++;
      }if(data[i].ninthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;

  }

  static Map<String , double> getTenthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].tenthQuestion==0){
        verySadCounter++ ;
      } if(data[i].tenthQuestion == 1){
        sadCounter++;
      }if(data[i].tenthQuestion == 2){
        medCounter++;
      }if(data[i].tenthQuestion == 3){
        happyCounter++;
      }if(data[i].tenthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getEleventhQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].eleventhQuestion==0){
        verySadCounter++ ;
      } if(data[i].eleventhQuestion == 1){
        sadCounter++;
      }if(data[i].eleventhQuestion == 2){
        medCounter++;
      }if(data[i].eleventhQuestion == 3){
        happyCounter++;
      }if(data[i].eleventhQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getTwelfthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].twelfthQuestion==0){
        verySadCounter++ ;
      } if(data[i].twelfthQuestion == 1){
        sadCounter++;
      }if(data[i].twelfthQuestion == 2){
        medCounter++;
      }if(data[i].twelfthQuestion == 3){
        happyCounter++;
      }if(data[i].twelfthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getThirteenthQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].thirteenthQuestion==0){
        verySadCounter++ ;
      } if(data[i].thirteenthQuestion == 1){
        sadCounter++;
      }if(data[i].thirteenthQuestion == 2){
        medCounter++;
      }if(data[i].thirteenthQuestion == 3){
        happyCounter++;
      }if(data[i].thirteenthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getFourteenthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].fourteenthQuestion==0){
        verySadCounter++ ;
      } if(data[i].fourteenthQuestion == 1){
        sadCounter++;
      }if(data[i].fourteenthQuestion == 2){
        medCounter++;
      }if(data[i].fourteenthQuestion == 3){
        happyCounter++;
      }if(data[i].fourteenthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getFifteenthQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].fifteenthQuestion==0){
        verySadCounter++ ;
      } if(data[i].fifteenthQuestion == 1){
        sadCounter++;
      }if(data[i].fifteenthQuestion == 2){
        medCounter++;
      }if(data[i].fifteenthQuestion == 3){
        happyCounter++;
      }if(data[i].fifteenthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }

  static Map<String , double> getSixteenthQuestionsCount(List<SurveyModel> data ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].sixteenthQuestion==0){
        verySadCounter++ ;
      } if(data[i].sixteenthQuestion == 1){
        sadCounter++;
      }if(data[i].sixteenthQuestion == 2){
        medCounter++;
      }if(data[i].sixteenthQuestion == 3){
        happyCounter++;
      }if(data[i].sixteenthQuestion == 4){
        veryHappyCounter++;
      }
    }
    mapData = {
      'راضي جدا': veryHappyCounter.toDouble() ,
      'راضي': happyCounter.toDouble(),
      'متوسط': medCounter.toDouble(),
      'غير راضي': sadCounter.toDouble(),
      'غير راضي جدا': verySadCounter.toDouble()
    };
    return mapData;
  }


  static List<Map<String , double>> allQuestionsCounts(List<SurveyModel> data){
    List<Map<String , double>> countList = [];
    countList.add(getFirstQuestionsCount(data));
    countList.add( getSecondQuestionsCount(data));
    countList.add( getThirdQuestionsCount(data));
    countList.add( getFourthQuestionsCount(data));
    countList.add( getFifthQuestionsCount(data));
    countList.add( getSixthQuestionsCount(data));
    countList.add( getSeventhQuestionsCount(data));
    countList.add( getEighthQuestionsCount(data));
    countList.add( getNinthQuestionsCount(data));
    countList.add( getTenthQuestionsCount(data));
    countList.add( getEleventhQuestionsCount(data));
    countList.add( getTwelfthQuestionsCount(data));
    countList.add( getThirteenthQuestionsCount(data));
    countList.add( getFourteenthQuestionsCount(data));
    countList.add( getFifteenthQuestionsCount(data));
    countList.add( getSixteenthQuestionsCount(data));
    return countList;
  }

}