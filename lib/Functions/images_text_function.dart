class DataFunction{


  static String imageText(activeStep){
    switch(activeStep){
      case 0:
        return 'images/login_screen_background.jpg';
      case 1:
        return 'images/question3_photo.jpg';

      case 2:
        return 'images/question3_photo.jpg';

      case 3:
        return 'images/login_screen_background.jpg';

      case 4:
        return 'images/login_screen_background.jpg';

      case 5:
        return 'images/question3_photo.jpg';

      case 6:
        return 'images/login_screen_background.jpg';

      case 7:
        return 'images/question3_photo.jpg' ;

      case 8:
        return 'images/login_screen_background.jpg';

      case 9:
        return 'images/question3_photo.jpg';

      case 10:
        return 'images/question3_photo.jpg';

      case 11:
        return 'images/login_screen_background.jpg';

      case 12:
        return 'images/question3_photo.jpg';

      case 13:
        return 'images/question3_photo.jpg';

      case 14:
        return'images/login_screen_background.jpg';

      case 15:
        return 'images/question3_photo.jpg';

      default:
        return 'images/question3_photo.jpg';

    }
  }

  static String headerText(activeStep) {
    switch (activeStep) {
      case 0:
        return ' أخبارك ايه النهارده؟ ';
      case 1:
        return ' لما بتروح العيادة،بتلاقي سهولة في التعامل وتسجيل اجازاتك ';

      case 2:
        return ' هل بتقبض مرتبك في ميعاده؟ ';

      case 3:
        return ' شايف الرحلات الشهريه للشركة بتغيرلك جو؟ ';

      case 4:
        return ' البريك/الكانتين، أفضل من زمان ';

      case 5:
        return ' وقت الراحه بتاعك حد بيمنعك عنه؟ ';

      case 6:
        return ' اليونيفورم عاجبك؟ ';

      case 7:
        return ' الحمامات نظيفة؟ ' ;

      case 8:
        return ' لما بتركب الباص بتبقا مرتاح؟ ';

      case 9:
        return ' مديرك في العمل بيساعدك تكبر؟ ';

      case 10:
        return ' زملائك ومديرك بيحترموك؟ ';

      case 11:
        return ' لو عندك مشكلة بتعرف توصلها؟ ';

      case 12:
        return ' الجودة مسئوليتنا كلنا... هل أنت راضي عن جودة عملك؟ ';

      case 13:
        return ' لو شايف أن فيه ترقيات داخلية،،بتعتبرها فرصة تكبر في شغلك ';

      case 14:
        return' شايف نفسك جزء من فريق العمل وبتشارك في تحسين الجودة؟ ';

      case 15:
        return ' هل التدريب الذي تحصل عليه بصفة دورية كافي لتأدية عملك بالجودة المطلوبة؟ ';

      default:
        return ' خطأ في تحميل السؤال...... ';
    }
  }
}