import 'package:get/get.dart';

class TheLocalization implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': const {
          // app name
          '1': 'Fast',
          '2': 'Food',

          ///the drawer
          '3': 'Hmmam Hamza',
          '4': 'Account',
          '5': 'Notifications',
          '6': 'privacy & security',
          '7': 'appearance',
          '8': 'settings',
          '9': 'all rights reserved to ',
          '10': 'search',

          // items menu
          '11': 'bigburger',
          '12': 'pitza',
          '13': 'captcheno',
          '14': 'hotdoge',
          '15': 'smallburger',

          // item cards
          '16': 'burger king',
          '17': 'best burger',

          // offers and discounts
          '18': 'offers and discounts',
          '19': 'get discount of',
          '20': '30 %',
          '21': 'now',

          // detials screen
          '22': 'khartoum',
          '23': '24',
          '24': 'reviews',
          '25': '15',

          '26': '   discreptions of burger king  ',

          //setting screen

          '27': 'appearance',
          '28': 'help & support',
          '29': 'about me',

          // about screen
          '30': 'feel free to contac me',
          '31': 'linkedIn',
          '32': 'Email',
          '33': 'call me',
          '34': 'my github',
          '35': 'debug sinIn',
          '36': 'debug logIn',
          '37': 'debug splash ',

          // sinIn screen
          '38': 'email',
          '39': 'password',
          '40': 'SingIn',
          '41': 'faceBook',
          '42': 'email',
          '43': 'phone',
          '44': 'Don\'t have account yet !!',
          '45': 'SINGUP NOW ',
          '46': 'email',
          '47': 'password',
          '48': 'reInter password',
          '49': 'Sing Up ',
          '50': 'Allredy have account !!',

          '51': 'OR',
          '52': 'password',

          ///////
          ///
          ///
          '53': 'comming soon',
          '54': 'Order',
          '55': 'debug slider screen',

          // macdonalz

          '56': 'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial'
              'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial'
              'Burger King (BK) is an American-based multinational chain of hamburger fast food restaurants. Headquartered in Miami-Dade County, Florida, the company was founded in 1953 as Insta-Burger King, a Jacksonville, Florida–based restaurant chain. After Insta-Burger King ran into financial',
          '57': 'lang',
          '58': 'arabic',
          '59': 'english',

          // ///////
          // /// SingIn and Up
          // ///
          // '60': 'email',
          // '61': 'password',
          // '62': 'reInter password',

          // '63': 'Sign In',
          // '64': 'OR',
          // '65': 'phone',

          // '66': 'facebook',
          // '67': 'new Account',
        },

        ///////////
        'ar': const {
          // app name

          '1': ' الطعام ',
          '2': 'السريع',

          ///the drawer
          '3': 'همام حمزه',
          '4': 'الحساب',
          '5': 'الاشعارات',
          '6': 'الحماية و الامان',
          '7': 'المظهر',
          '8': 'الاعدادت',
          '9': ' جميع الحقوق محفوظة ل ',
          '10': 'ابحث',

          // items menu
          '11': 'بيرقر كبير',
          '12': 'بيتزا',
          '13': 'كابتشينو',
          '14': 'هوتدوق',
          '15': 'بيرقر صغير',

          // item cards
          '16': 'بيرقر كينق',
          '17': 'افضل بيرقر',

          // offers and discounts
          '18': 'العروض والتخفيضات',
          '19': 'احصل علي تخفيض',
          '20': '30 %',
          '21': 'الان',

          // detials screen
          '22': 'الخرطوم',
          '23': '24',
          '24': 'تقيم',
          '25': '15',

          '26': '   discreptions of burger king  ',

          //setting screen

          '27': 'المظهر',
          '28': 'الدعم الفني',
          '29': 'تعرف علي',

          // about screen
          '30': 'تواصل معي',
          '31': 'لينكدان',
          '32': 'الايميل',
          '33': 'اتصل بي',
          '34': 'الجت هب',
          '35': 'تجربة شاشة التسجيل',
          '36': 'تجربة شاشة الدخول',
          '37': 'تجربة الشاشة المؤقته ',

          // sinIn screen
          '38': 'الايميل',
          '39': 'كلمة المرور',
          '40': 'تسجيل دخول',
          '41': 'فيس بوك',
          '42': 'الايميل',
          '43': 'الهاتف',
          '44': 'ليس لديك حساب !!',
          '45': 'سجل الان ',
          '46': 'الايميل',
          '47': 'كلمة المرور',
          '48': 'اعد ادخال كلمة المرور',
          '49': 'حساب جديد',
          '50': 'لديك حساب مسبقا',

          '51': 'او',
          '52': 'كلمة المرور',

          ///////
          ///
          ///
          '53': 'تحت التطوير',
          '54': 'اطلب',

          '55': 'مراجعة شاشة البداية',

          // macdonalz
          '56':
              'لطعام الأساسي الذي يعده هو البرجر بأنواعه وأحجامه المختلفة، بطاطا مقلية، بعض وجبات الإفطار، مشروبات غازية، حليب وحلويات، المثلجات. وحديثًا يقدم المأكولات الصحية كالسلطات. أشهر ما يقدم على لائحته الأساسية هي شطيرة ماك تشيكن وشطيرة البيغ ماك وشطيرة الماك رويال وغيرهم. كما يقدم شطيرة تسمى ماك أرابيا المعدة بطريقة ومكونات عربية. ويقدم وجبة للأطفال مع هدية (لعبة) غالبًا ما تمثل شخصية كرتونية محببة للأطفال.',
          '57': 'اللغات',
          '58': 'العربية',
          '59': 'الانجليزية',

          // ///////
          // /// SingIn and Up
          // ///
          // '60': 'الايميل',
          // '61': 'كلمة السر',
          // '62': 'اعد ادخال كلمة السر',

          // '63': 'تسجيل الدخول',
          // '64': 'او يمكنك الدخول بواسطة',
          // '65': 'رقم الهاتف',

          // '66': 'الفيسبوك',
          // '67': 'حساب جديد',
        },
      };
}

class AppLocal {
  static const String appNameFast = '1';
  static const String appNameFood = '2';
//the drawer
  static const String userName = '3';
  static const String account = '4';
  static const String notifications = '5';
  static const String priviceyAndSecurity = '6';
  static const String appearance = '7';
  static const String settings = '8';
  static const String allRightsReserved = '9';
  static const String search = '10';

  // items menu
  static const String bigBurger = '11';
  static const String pitza = '12';
  static const String capitcheno = '13';
  static const String hotdoge = '14';
  static const String smallBurger = '15';

  // item card
  static const String burgerKing = '16';
  static const String bestBurger = '17';

  // offers and discounts
  static const String offersAndDiscounts = '18';
  static const String getDiscountOff = '19';
  static const String therty = '20';
  static const String now = '21';

  //detials Screen
  static const String cityname = '22';
  static const String numberOfReviews = '23';
  static const String reviews = '24';
  static const String burgerPrice = '25';
  static const String discriptionOfBurgerKing = '26';

////////////////////////////////////////////////////////
//////////////////////////
  ///
  ///
  ///
  ///
  ///
////////////////////////

// settins screen

  static const String helpAndSupport = '28';
  static const String aboutMe = '29';

//about screen
  static const String feelFreeToContacMe = '30';

  static const String linkedIn = '31';

  static const String Email = '32';

  static const String callMe = '33';

  static const String myGithub = '34';

  static const String debugSinIng = '35';

  static const String DebugLogIn = '36';

  static const String debugSplach = '37';

//sing screen
  static const String singIn = '40';

  static const String facebook = '41';

  static const String phone = '43';

  static const String dontHaveAccountYet = '44';

  static const String singUpNow = '45';

  static const String password = '47';

  static const String reinterPassword = '48';

  static const String singUp = '49';

  static const String allredyHaveAccount = '50';

  static const String or = '51';

// comming soon
  static const String commingSoon = '53';
  static const String order = '54';
  static const String debugSplashScreen = '55';
  static const String macdonalz = '56';
  static const String langushes = '57';
  static const String arabic = '58';
  static const String english = '59';

  //         /// SingIn and Up
  //         ///
  //         '60': 'email',
  //         '61': 'password',
  //         '62': 'reInter password',

  //         '63': 'Sign In',
  //         '64': 'OR',
  //         '65': 'phone',

  //         '66': 'facebook',
  //         '67': 'new Account',

  // static const String email = '60';
  // static const String password = '61';
  // static const String reinterpassword = '62';
  // static const String signIn = '63';
  // static const String or = '64';
  // static const String phone = '65';
  // static const String facebook = '66';
  // static const String newAccount = '67';
}
