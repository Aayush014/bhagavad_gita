import 'dart:math';
import 'package:flutter/material.dart';

class GitaMahatmyaScreen extends StatefulWidget {
  const GitaMahatmyaScreen({super.key});

  @override
  State<GitaMahatmyaScreen> createState() => _GitaMahatmyaScreenState();
}

class _GitaMahatmyaScreenState extends State<GitaMahatmyaScreen> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: height/3,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 140,
                  child: Transform.rotate(
                    child: Container(
                      height: height/4.5,
                      child: Image.asset('Assets/Images/mor_pankh.png'),
                    ),
                    angle: pi / 4,
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 110,
                  child: Text(
                    '॥ गीता ॥',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: height/4.2,
                ),
                Container(
                  alignment: Alignment.center,
                  width: width/2.2,
                  height: height/1.6,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    alignment: Alignment.center,
                    height: height/1.75,
                    width: width/2.4,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade300,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 15,bottom: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'गीता माहात्म्य',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text("\nश्री पृथ्वी देवी ने पूछा हे भगवन्! हे परमेश्वर! हे प्रभो! प्रारब्ध कर्म को भोगते हुए मनुष्य को एकनिष्ठ भक्ति कैसे प्राप्त होती है? ॥१॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nश्री विष्णु भगवान बोले प्रारब्ध को भोगता हुआ जो मनुष्य सदा श्री गीता के अभ्यास में आसक्त हो, वही इस लोक में मुक्त एवं सुखी होता है तथा कर्म में लेपायमान नहीं होता। ॥२॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजिस प्रकार कमल के पत्ते को जल स्पर्श नहीं करता उसी प्रकार जो मनुष्य श्री गीता का ध्यान करता है उसे महापापादि पाप कभी स्पर्श नहीं करते। ॥३॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजहाँ श्री गीता की पुस्तक होती है और जहाँ श्री गीता का पाठ होता है वहाँ प्रयागादि सर्व तीर्थ निवास करते हैं। ॥४॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजहाँ श्री गीता प्रवर्तमान (प्रभावशील) है, वहाँ सर्व देवों, ऋषियों, योगियों, नागों और गोपालबाल श्रीकृष्ण भी नारद, ध्रुव और सर्व पार्षदों सहित जल्दी ही सहायक होते हैं। ॥५॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजहाँ श्री गीता का विचार, पठन, पाठन एवं श्रवण होता है, हे पृथ्वी! मैं वहाँ अवश्य निवास करता हूँ। ॥६॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nमैं श्री गीता के आश्रय में रहता हूँ, श्री गीता मेरा उत्तम घर है और श्री गीता के ज्ञान का आश्रय करके मैं तीनों लोकों का पालन करता हूँ। ॥७॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nश्री गीता अति अवर्णनीय पदोंवाली, अविनाशी, अर्धमात्रा तथा अक्षर स्वरूप, नित्य, ब्रह्मरूपिणी और परम श्रेष्ठ मेरी विद्या है, इसमें सन्देह नहीं है। ॥८॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nवह श्री गीता चिदानन्द श्रीकृष्ण ने अपने मुख से अर्जुन को कही हुई तथा तीनों वेदस्वरूप, परमानन्दस्वरूप एवं तत्त्वरूप पदार्थ के ज्ञान से युक्त है। ॥९॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजो मनुष्य स्थिर मनवाला होकर नित्य श्रीगीता अठारहों अध्यायों का जप-पाठ करता है वह ज्ञानरूप सिद्धि को प्राप्त होता है और फिर परम पद को पाता है । ॥१०॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nसम्पूर्ण पाठ करने में असमर्थ हो तो आधा पाठ करे, तो भी गाय के दान से होनेवाले पुण्य को प्राप्त करता है, इसमें सन्देह नहीं, तीसरे भाग का पाठ करे तो गंगास्नान का फल प्राप्त करता है और छठवें भाग का पाठ करे तो सोमयाग का फल पाता है। ॥११,१२॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजो मनुष्य भक्तियुक्त होकर नित्य एक अध्याय का भी पाठ करता है, वह रुद्रलोक को प्राप्त होता है और वहाँ शिवजी का गण बनकर चिरकाल निवास करता है । ॥१३॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nहे पृथ्वी! जो मनुष्य नित्य एक अध्याय, एक श्लोक अथवा श्लोक के एक चरण का पाठ करता है, वह मन्वंतर तक मनुष्यता को प्राप्त करता है। ॥१४॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nजो मनुष्य गीता के दस, सात, पाँच, चार, तीन, दो, एक या आधे श्लोक का पाठ करता है, वह अवश्य दस हजार वर्ष तक चन्द्रलोक को प्राप्त होता है। गीता के पाठ में लगे हुए मनुष्य की अगर मृत्यु होती है तो वह (पशु आदि की अधम योनियों में न जाकर) पुनः मनुष्य जन्म पाता है, (और वहाँ) गीता का पुनः अभ्यास करके उत्तम मुक्ति को पाता है । 'गीता' ऐसे उच्चार के साथ जो मरता है, वह सद्गति को पाता है। ॥१५,१६,१७॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nगीता का अर्थ सुनने में तत्पर बना हुआ मनुष्य महापापी हो तो भी वह वैकुण्ठ को प्राप्त होता है और विष्णु के साथ आनन्द करता है। ॥१८॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nअनेक कर्म करके नित्य श्री गीता के अर्थ का जो विचार करता है उसे जीवन्मुक्त जानो। मृत्यु के बाद वह परम पद को पाता है। ॥ १९॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nगीता का आश्रय करके जनक आदि कई राजा पाप रहित होकर लोक में यशस्वी बने हैं और परम पद को प्राप्त हुए है। ॥२०॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nश्री गीता का पाठ करके जो माहात्म्य का पाठ नहीं करता है, उसका पाठ निष्फल होता है और ऐसे पाठ को श्रमरूप कहा है । ॥२१॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                            Text("\nइस माहात्म्य सहित श्रीगीता का जो अभ्यास करता है, वह उसका फल पाता है और दुर्लभगति को प्राप्त होता है, सूतजी बोले – गीता का यह सनातन माहात्म्य मैंने कहा। गीतापाठ के अन्त में जो इसका पाठ करता है, वहउपर्युक्त फल प्राप्त करता है। ॥२२,२३॥", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,),),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
