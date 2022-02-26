import '../models/survey_model.dart';

class QuestionsCount{
  static Map<String , double> getFirstQuestionsCount(List<SurveyModel> data  ){
    Map<String , double> mapData;
    int veryHappyCounter=0 ;
    int happyCounter = 0 ;
    int medCounter=0 ;
    int sadCounter=0 ;
    int verySadCounter=0;
    for(var i=0 ; i<data.length ; i++){
      if (data[i].First_Question==0){
        verySadCounter++ ;
      } if(data[i].First_Question == 1){
        sadCounter++;
      }if(data[i].First_Question == 2){
        medCounter++;
      }if(data[i].First_Question == 3){
        happyCounter++;
      }if(data[i].First_Question == 4){
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
      if (data[i].Second_Question==0){
        verySadCounter++ ;
      } if(data[i].Second_Question == 1){
        sadCounter++;
      }if(data[i].Second_Question == 2){
        medCounter++;
      }if(data[i].Second_Question == 3){
        happyCounter++;
      }if(data[i].Second_Question == 4){
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
      if (data[i].Third_Question==0){
        verySadCounter++ ;
      } if(data[i].Third_Question == 1){
        sadCounter++;
      }if(data[i].Third_Question == 2){
        medCounter++;
      }if(data[i].Third_Question == 3){
        happyCounter++;
      }if(data[i].Third_Question == 4){
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
      if (data[i].Fourth_Question==0){
        verySadCounter++ ;
      } if(data[i].Fourth_Question == 1){
        sadCounter++;
      }if(data[i].Fourth_Question == 2){
        medCounter++;
      }if(data[i].Fourth_Question == 3){
        happyCounter++;
      }if(data[i].Fourth_Question == 4){
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
      if (data[i].Fifth_Question==0){
        verySadCounter++ ;
      } if(data[i].Fifth_Question == 1){
        sadCounter++;
      }if(data[i].Fifth_Question == 2){
        medCounter++;
      }if(data[i].Fifth_Question == 3){
        happyCounter++;
      }if(data[i].Fifth_Question == 4){
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
      if (data[i].Sixth_Question==0){
        verySadCounter++ ;
      } if(data[i].Sixth_Question == 1){
        sadCounter++;
      }if(data[i].Sixth_Question == 2){
        medCounter++;
      }if(data[i].Sixth_Question == 3){
        happyCounter++;
      }if(data[i].Sixth_Question == 4){
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
      if (data[i].Seventh_Question==0){
        verySadCounter++ ;
      } if(data[i].Seventh_Question == 1){
        sadCounter++;
      }if(data[i].Seventh_Question == 2){
        medCounter++;
      }if(data[i].Seventh_Question == 3){
        happyCounter++;
      }if(data[i].Seventh_Question == 4){
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
      if (data[i].Eighth_Question==0){
        verySadCounter++ ;
      } if(data[i].Eighth_Question == 1){
        sadCounter++;
      }if(data[i].Eighth_Question == 2){
        medCounter++;
      }if(data[i].Eighth_Question == 3){
        happyCounter++;
      }if(data[i].Eighth_Question == 4){
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
      if (data[i].Ninth_Question==0){
        verySadCounter++ ;
      } if(data[i].Ninth_Question == 1){
        sadCounter++;
      }if(data[i].Ninth_Question == 2){
        medCounter++;
      }if(data[i].Ninth_Question == 3){
        happyCounter++;
      }if(data[i].Ninth_Question == 4){
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
      if (data[i].Tenth_Question==0){
        verySadCounter++ ;
      } if(data[i].Tenth_Question == 1){
        sadCounter++;
      }if(data[i].Tenth_Question == 2){
        medCounter++;
      }if(data[i].Tenth_Question == 3){
        happyCounter++;
      }if(data[i].Tenth_Question == 4){
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
      if (data[i].Eleventh_Question==0){
        verySadCounter++ ;
      } if(data[i].Eleventh_Question == 1){
        sadCounter++;
      }if(data[i].Eleventh_Question == 2){
        medCounter++;
      }if(data[i].Eleventh_Question == 3){
        happyCounter++;
      }if(data[i].Eleventh_Question == 4){
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
      if (data[i].Twelfth_Question==0){
        verySadCounter++ ;
      } if(data[i].Twelfth_Question == 1){
        sadCounter++;
      }if(data[i].Twelfth_Question == 2){
        medCounter++;
      }if(data[i].Twelfth_Question == 3){
        happyCounter++;
      }if(data[i].Twelfth_Question == 4){
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
      if (data[i].Thirteenth_Question==0){
        verySadCounter++ ;
      } if(data[i].Thirteenth_Question == 1){
        sadCounter++;
      }if(data[i].Thirteenth_Question == 2){
        medCounter++;
      }if(data[i].Thirteenth_Question == 3){
        happyCounter++;
      }if(data[i].Thirteenth_Question == 4){
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
      if (data[i].Fourteenth_Question==0){
        verySadCounter++ ;
      } if(data[i].Fourteenth_Question == 1){
        sadCounter++;
      }if(data[i].Fourteenth_Question == 2){
        medCounter++;
      }if(data[i].Fourteenth_Question == 3){
        happyCounter++;
      }if(data[i].Fourteenth_Question == 4){
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
      if (data[i].Fifteenth_Question==0){
        verySadCounter++ ;
      } if(data[i].Fifteenth_Question == 1){
        sadCounter++;
      }if(data[i].Fifteenth_Question == 2){
        medCounter++;
      }if(data[i].Fifteenth_Question == 3){
        happyCounter++;
      }if(data[i].Fifteenth_Question == 4){
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
      if (data[i].Sixteenth_Question==0){
        verySadCounter++ ;
      } if(data[i].Sixteenth_Question == 1){
        sadCounter++;
      }if(data[i].Sixteenth_Question == 2){
        medCounter++;
      }if(data[i].Sixteenth_Question == 3){
        happyCounter++;
      }if(data[i].Sixteenth_Question == 4){
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
    List<Map<String , double>> countList;
    countList.insert(0, getFirstQuestionsCount(data));
    countList.insert(1, getSecondQuestionsCount(data));
    countList.insert(2, getThirdQuestionsCount(data));
    countList.insert(3, getFourthQuestionsCount(data));
    countList.insert(4, getFifthQuestionsCount(data));
    countList.insert(5, getSixthQuestionsCount(data));
    countList.insert(6, getSeventhQuestionsCount(data));
    countList.insert(7, getEighthQuestionsCount(data));
    countList.insert(8, getNinthQuestionsCount(data));
    countList.insert(9, getTenthQuestionsCount(data));
    countList.insert(10, getEleventhQuestionsCount(data));
    countList.insert(11, getTwelfthQuestionsCount(data));
    countList.insert(12, getThirteenthQuestionsCount(data));
    countList.insert(13, getFourteenthQuestionsCount(data));
    countList.insert(14, getFifteenthQuestionsCount(data));
    countList.insert(15, getSixteenthQuestionsCount(data));
    return countList;
  }

}