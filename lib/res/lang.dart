import 'package:get/get.dart';

const String hindi = "hi";
const String metheli = "tl";

class LocalLangunage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        hindi: {
          AppString.langA: "अ",
          AppString.appName: "तिरहुता लिपि",
          AppString.mainHeadLine: "नि:शुल्क मिथिलाक्षर पाठशाला",
          AppString.aboutText:
              "मिथिलाक्षर लिपि अथवा मिथिलाक्षरा का प्रयोग लोग भारत के उत्तर बिहार एवं नेपाल के तराई क्षेत्र की मैथिली भाषा को लिखने के लिये करते हैं। इसे 'मैथिली लिपि', 'वैदेही लिपी' और 'तिरहुता' भी कहा जाता है। इस लिपि का प्राचीनतम् नमूना दरभंगा जिला के कुशेश्वरस्थान के निकट तिलकेश्वरस्थान के शिव मन्दिर में है। इस मन्दिर में पूर्वी विदेह प्राकृत में लिखा है कि मन्दिर 'कात्तिका सुदी' (अर्थात कार्तिक शुक्ल प्रतिपदा) शके १२५ (अर्थात २०३ ई सन्) में बना था। इस मन्दिर की लिपि और आधुनिक तिरहुता लिपि में बहुत कम अन्तर है। किन्तु २0वीं शताब्दी में क्रमश: अधिकांश मैथिली के लोगों ने मैथिली लिखने के लिये देवनागरी का प्रयोग करना आरम्भ कर दिया। किन्तु अब भी कुछ पारम्परिक ब्राह्मण (पण्डित) और कायस्थ द्वारा 'पाता' (विवाह आदि से सम्बन्धित पत्र) भेजने के लिये इसका प्रयोग करते हैं। सन् २००३ ईसवी में इस लिपि के लिये फॉण्ट का विकास किया गया था। मिथिलाक्षर वास्तुतः बांग्ला, उड़िया और आसामी लिपि की जननी मानी जाती है। इस कारण यह लिपि बंगला लिपि से मिलती-जुलती है किन्तु उससे थोड़ी-बहुत भिन्न है। यह पढ़ने में बंगला लिपि की अपेक्षा कठिन है।",
        },
        metheli: {
          AppString.langA: "𑒁",
          AppString.appName: "App name 2",
          AppString.mainHeadLine:
              "𑒢𑒱:𑒬𑒳𑒪𑓂𑒏 𑒧𑒱𑒟𑒱𑒪𑒰𑒏𑓂𑒭𑒩 𑒣𑒰𑒚𑒬𑒰𑒪𑒰",
          AppString.aboutText: "about text sss",
        },
      };
}

class AppString {
  static String appName = "AppName";
  static String langA = "langA";
  static String path = "पाठ्यक्रम";
  static String mainHeadLine = "main head line";
  static String aboutText = "About Text";
}
