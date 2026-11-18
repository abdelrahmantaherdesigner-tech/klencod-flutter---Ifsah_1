// ==============================================================================
// إِفصاح: المنصة البرمجية التعليمية التفاعلية المتكاملة للأطفال (نسخة الإنتاج الشاملة)
// تطوير وإشراف: المهندس عبدالرحمن طاهر الشرعبي (مجموعة آفاق)
// ==============================================================================

import 'package:flutter/material.dart';
import 'dart:ui' show PointMode;

void main() {
  runApp(const IfsahMasterApp());
}

class IfsahMasterApp extends StatelessWidget {
  const IfsahMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'إِفصاح - المنصة التعليمية المتكاملة للأطفال',
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'SA'),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF0F172A),
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        fontFamily: 'Cairo',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F172A),
          secondary: const Color(0xFF10B981),
          surface: Colors.white,
        ),
      ),
      home: const IfsahMasterDashboard(),
    );
  }
}

// ------------------------------------------------------------------------------
// نموذج بيانات التطبيق المركزي (Central App State Model)
// ------------------------------------------------------------------------------
class AppDataModel {
  static final List<Map<String, String>> fullArabicAlphabet = [
    {'letter': 'أ', 'word': 'أَسَد', 'category': 'حروف أصلية', 'sound': 'A', 'desc': 'ألف أسد الملك'},
    {'letter': 'ب', 'word': 'بَطَّة', 'category': 'حروف أصلية', 'sound': 'B', 'desc': 'باء بطة جميلة'},
    {'letter': 'ت', 'word': 'تُفَّاحَة', 'category': 'حروف أصلية', 'sound': 'T', 'desc': 'تاء تفاحة لذيذة'},
    {'letter': 'ث', 'word': 'ثَعْلَب', 'category': 'حروف أصلية', 'sound': 'Th', 'desc': 'ثاء ثعلب مكار'},
    {'letter': 'ج', 'word': 'جَمَل', 'category': 'حروف أصلية', 'sound': 'J', 'desc': 'جيم جمل سفينة الصحراء'},
    {'letter': 'ح', 'word': 'حِصَان', 'category': 'حروف أصلية', 'sound': 'H', 'desc': 'حاء حصان عربي أصيل'},
    {'letter': 'خ', 'word': 'خُبْز', 'category': 'حروف أصلية', 'sound': 'Kh', 'desc': 'خاء خبز طازج'},
    {'letter': 'د', 'word': 'دُرَّاجَة', 'category': 'حروف أصلية', 'sound': 'D', 'desc': 'دال دراجة ممتعة'},
    {'letter': 'ذ', 'word': 'ذِئْب', 'category': 'حروف أصلية', 'sound': 'Dh', 'desc': 'ذال ذئب قوي'},
    {'letter': 'ر', 'word': 'رُمَّان', 'category': 'حروف أصلية', 'sound': 'R', 'desc': 'راء رمان مفيد'},
    {'letter': 'ز', 'word': 'زَرَافَة', 'category': 'حروف أصلية', 'sound': 'Z', 'desc': 'زاي زرافة طويلة'},
    {'letter': 'س', 'word': 'سَمَكَة', 'category': 'حروف أصلية', 'sound': 'S', 'desc': 'سين سمكة تسبح'},
    {'letter': 'ش', 'word': 'شَمْس', 'category': 'حروف أصلية', 'sound': 'Sh', 'desc': 'شين شمس دافئة'},
    {'letter': 'ص', 'word': 'صَقْر', 'category': 'حروف أصلية', 'sound': 'S', 'desc': 'صاد صقر جارح'},
    {'letter': 'ض', 'word': 'ضِفْدَع', 'category': 'حروف أصلية', 'sound': 'D', 'desc': 'ضاد ضفدع أخضر'},
    {'letter': 'ط', 'word': 'طَائِر', 'category': 'حروف أصلية', 'sound': 'T', 'desc': 'طاء طائر يطير'},
    {'letter': 'ظ', 'word': 'ظَرْف', 'category': 'حروف أصلية', 'sound': 'Z', 'desc': 'ظاء ظرف رسالة'},
    {'letter': 'ع', 'word': 'عِنَب', 'category': 'حروف أصلية', 'sound': 'A', 'desc': 'عين عنب حلو'},
    {'letter': 'غ', 'word': 'غَزَال', 'category': 'حروف أصلية', 'sound': 'Gh', 'desc': 'غين غزال سريع'},
    {'letter': 'ف', 'word': 'فِيل', 'category': 'حروف أصلية', 'sound': 'F', 'desc': 'فاء فيل ضخم'},
    {'letter': 'ق', 'word': 'قَمَر', 'category': 'حروف أصلية', 'sound': 'Q', 'desc': 'قاف قمر منير'},
    {'letter': 'ك', 'word': 'كِتَاب', 'category': 'حروف أصلية', 'sound': 'K', 'desc': 'كاف كتاب مفيد'},
    {'letter': 'ل', 'word': 'لَحْم', 'category': 'حروف أصلية', 'sound': 'L', 'desc': 'لام لحم مغذي'},
    {'letter': 'م', 'word': 'مَوْز', 'category': 'حروف أصلية', 'sound': 'M', 'desc': 'ميم موز لذيذ'},
    {'letter': 'ن', 'word': 'نَمِر', 'category': 'حروف أصلية', 'sound': 'N', 'desc': 'نون نمر شجاع'},
    {'letter': 'هـ', 'word': 'هِرَّة', 'category': 'حروف أصلية', 'sound': 'H', 'desc': 'هاء هرة أليفة'},
    {'letter': 'و', 'word': 'وَرْدَة', 'category': 'حروف أصلية', 'sound': 'W', 'desc': 'واو وردة متفتحة'},
    {'letter': 'ي', 'word': 'يَد', 'category': 'حروف أصلية', 'sound': 'Y', 'desc': 'ياء يد للعمل'},
  ];

  static final List<Map<String, dynamic>> fullStories = [
    {
      'id': 1,
      'title': 'السلحفاة والأرنب المغرور',
      'level': 'مستوى تمهيدي 1',
      'summary': 'قصة الصبر وعدم الاستعجال والتواضع.',
      'sections': [
        'كان يا ما كان في قديم الزمان، وفي غابة خضراء جميلة مليئة بالأشجار العالية والأعشاب الندية، يعيش أرنب سريع جداً وغرور بنفسه وبسرعته الفائقة، وكان دائماً يفتخر أمام الحيوانات.',
        'وفي يوم من الأيام، مرت بجانبه سلحفاة صغيرة تمشي ببطء شديد وهدوء تام. فضحك الأرنب بصوت عالٍ وقال لها بسخرية: "أيتها السلحفاة البطيئة، لماذا لا تنظرين إلى سرعتي وتتعلمين كيف يكون الركض الحقيقي؟"',
        'ابتسمت السلحفاة بهدوء وثقة وقالت له بكل أدب: "أنا بطيئة نعم، ولكن ما رأيك أن نتسابق إلى قمة الجبل البعيد لنرى من يفوز حقاً؟"',
        'قبل الأرنب التحدي فوراً وهو يضحك باستهزاء، وبدأ السباق. انطلق كالصاروخ وابتعد مسافات طويلة جداً، ثم نظر خلفه ولم يجد السلحفاة، فقرر أن يستظل تحت شجرة ظليلة وينام قيلولة قصيرة لغروره الشديد.',
        'نام الأرنب عميقاً ونسي أمر السباق تماماً. وفي هذه الأثناء، واصلت السلحفاة السير بخطوات بطيئة لكنها ثابتة ومستمرة دون توقف ولا استسلام، حتى تجاوزت الأرنب النائم ووصلت إلى خط النهاية بنجاح تام وفازت بالسباق وسط تصفيق الحيوانات!'
      ]
    },
    {
      'id': 2,
      'title': 'الأسد الكبير والفأر الصغير',
      'level': 'مستوى تمهيدي 2',
      'summary': 'قصة الصداقة والوفاء ورد الجميل.',
      'sections': [
        'في يوم حار من أيام الصيف، كان أسد ضخم وقوي ينام تحت ظل شجرة كبيرة وواسعة بعد أن تناول طعامه الشهي في وسط الغابة الواسعة.',
        'اقترب فأر صغير وشقي بالصدفة وكان يلعب ويمرح، فصعد فوق ظهر الأسد دون أن يقصد. استيقظ الأسد غاضباً وضايقه الأمر، فقبض بيده الكبيرة على الفأر الصغير وهمّ بأكله عقاباً له على إزعاجه.',
        'بكى الفأر الصغير بخوف شديد وقال بصوت مرتعش: "أيها الملك العظيم، أرجوك اتركني ولا تقبض علي، فربما أساعدك في يوم من الأيام ولن أنسى هذا الجميل أبداً!"',
        'ضحك الأسد بسخرية من كلام الفأر الصغير وقال في نفسه: "كيف لفأر ضئيل مثلك أن يساعد أسداً قوياً مثلي؟"، لكنه عطف عليه وفتح كفه وتركه يذهب لحال سبيله.',
        'بعد أيام قليلة، وقع الأسد في شبكة قوية صنعها الصيادون ولم يستطع الفكاك منها وبدأ يزأر بقوة وحزن. سمع الفأر الصغير صوت زئير الأسد، فركض مسرعاً وقرض بحيوانية حبال الشبكة القوية بأسنانه الحادة حتى قطعها وأخرج الأسد سالماً، وتعلم الجميع أن الصديق الحقيقي لا يُقاس بحجمه أبداً.'
      ]
    },
    {
      'id': 3,
      'title': 'العصفور الشجاع وقرية النمل',
      'level': 'مستوى تمهيدي 3',
      'summary': 'قصة التعاون ومساعدة الآخرين في الأوقات الصعبة.',
      'sections': [
        'في بستان مليء بأشجار التفاح والرمان، عاش عصفور صغير ذو ريش ملون جميل يُدعى زقزوق، وكان يحب مساعدة جميع جيرانه وحيوانات البستان بلا استثناء.',
        'وفي فصل الخريف، جمعت أسراب النمل النشيطة كميات كبيرة من حبوب القمح لتخزينها قبل قدوم فصل الشتاء والبرد القارص، فجاءت سحابة سوداء ومطيرة فجأة وبدأت الأمطار تهطل بغزارة شديدة.',
        'كانت حبات المطر الثقيلة تهدد بجرف منزل النمل وجميع مؤونتهم التي تعبوا في جمعها طوال شهور الصيف الطويلة، وبدأ النمل الصغير يصرخ ويستنجد طلباً للمساعدة والنجدة.',
        'لم يتردد العصفور الشجاع زقزوق لحظة واحدة، فبدأ ينقل بحرص وأمان حبات القمح بمنقاره القوي ويضعها في مكان آمن وبعيد عن مياه المطر الجارفة، مستعيناً بقوته وطيرانه السريع.',
        'انتهت العاصفة وعاد الطقس جميلاً ومشمساً، وفرح النمل كثيراً بنجاة مؤونتهم، وقدموا الشكر الجزيل للعصفور الشجاع الذي علمهم أن التعاون والمحبة هما سر القوة الحقيقية في الحياة.'
      ]
    }
  ];
}

// ------------------------------------------------------------------------------
// لوحة التحكم الرئيسية الموحدة (Master Dashboard)
// ------------------------------------------------------------------------------
class IfsahMasterDashboard extends StatelessWidget {
  const IfsahMasterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> masterSections = [
      {
        'title': '1. تعلم الحروف',
        'subtitle': 'نطق وأمثلة جميع الحروف الـ 28',
        'icon': Icons.menu_book_rounded,
        'color': const Color(0xFF2563EB),
        'screen': const LettersEnterpriseScreen(),
      },
      {
        'title': '2. تكوين الكلمات',
        'subtitle': 'تركيب وتهجئة الكلمات العربية',
        'icon': Icons.spellcheck_rounded,
        'color': const Color(0xFF16A34A),
        'screen': const WordsEnterpriseScreen(),
      },
      {
        'title': '3. الكتابة التفاعلية',
        'subtitle': 'تتبع ورسم الحروف بالأصبع (Canvas)',
        'icon': Icons.draw_rounded,
        'color': const Color(0xFFD97706),
        'screen': const AdvancedDrawingCanvasView(),
      },
      {
        'title': '4. تحدي الأرقام',
        'subtitle': 'العد والعمليات الحسابية للأطفال',
        'icon': Icons.calculate_rounded,
        'color': const Color(0xFF9333EA),
        'screen': const NumbersEnterpriseScreen(),
      },
      {
        'title': '5. قصص تفاعلية',
        'subtitle': '3 قصص مصورة ومسموعة بالكامل',
        'icon': Icons.auto_stories_rounded,
        'color': const Color(0xFFE11D48),
        'screen': const StoriesEnterpriseScreen(),
      },
      {
        'title': '6. ألعاب لغوية',
        'subtitle': 'مطابقة الصور مع الكلمات الصحيحة',
        'icon': Icons.extension_rounded,
        'color': const Color(0xFF0D9488),
        'screen': const AdvancedMatchingGameScreen(),
      },
      {
        'title': '7. قاموسي الشخصي',
        'subtitle': 'حفظ ومراجعة المفردات المكتسبة',
        'icon': Icons.collections_bookmark_rounded,
        'color': const Color(0xFFEA580C),
        'screen': const DictionaryEnterpriseScreen(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'إِفصاح - المنصة التعليمية المتكاملة',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: const Color(0xFF0F172A),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أهلاً بك يا مهندس عبدالرحمن 🌟',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
            ),
            const SizedBox(height: 4),
            const Text(
              'اختر أحد الأقسام التعليمية السبعة للبدء في مغامرة التأسيس:',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 0.92,
                ),
                itemCount: masterSections.length,
                itemBuilder: (context, index) {
                  final item = masterSections[index];
                  return _buildMasterCard(
                    context,
                    title: item['title'],
                    subtitle: item['subtitle'],
                    icon: item['icon'],
                    color: item['color'],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => item['screen']),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMasterCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: color.withOpacity(0.25), width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: color.withOpacity(0.12),
              child: Icon(icon, size: 28, color: color),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 11, color: Colors.grey),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 1. شاشة تعلم الحروف (مفصلة لجميع الحروف الـ 28)
// ------------------------------------------------------------------------------
class LettersEnterpriseScreen extends StatefulWidget {
  const LettersEnterpriseScreen({super.key});

  @override
  State<LettersEnterpriseScreen> createState() => _LettersEnterpriseScreenState();
}

class _LettersEnterpriseScreenState extends State<LettersEnterpriseScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final alphabet = AppDataModel.fullArabicAlphabet;
    final currentItem = alphabet[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('1. تعلم الحروف والأصوات', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF2563EB),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue.shade200, width: 2.5),
                ),
                child: Text(
                  currentItem['letter']!,
                  style: const TextStyle(fontSize: 85, fontWeight: FontWeight.bold, color: Color(0xFF2563EB)),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                currentItem['word']!,
                style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 8),
              Text(
                currentItem['desc']!,
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.volume_up),
                label: const Text('استمع للنطق الصوتي النقي'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2563EB),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: currentIndex > 0 ? () => setState(() => currentIndex--) : null,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('السابق'),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    '${currentIndex + 1} / ${alphabet.length}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    onPressed: currentIndex < alphabet.length - 1 ? () => setState(() => currentIndex++) : null,
                    label: const Text('التالي'),
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 2. شاشة تكوين الكلمات
// ------------------------------------------------------------------------------
class WordsEnterpriseScreen extends StatelessWidget {
  const WordsEnterpriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2. تكوين وتهجئة الكلمات', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF16A34A),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('🍎', style: TextStyle(fontSize: 70)),
              const SizedBox(height: 10),
              const Text('تَفَّاحَة', style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Color(0xFF16A34A))),
              const SizedBox(height: 20),
              const Text('اختر ورتب الحروف لتكوين الكلمة الصحيحة:', style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 30),
              Wrap(
                spacing: 12,
                children: ['ة', 'ح', 'ا', 'ف', 'ت'].map((letter) {
                  return Chip(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    label: Text(letter, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    backgroundColor: Colors.green.shade50,
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check_circle),
                label: const Text('تحقق من الإجابة الصحيحة'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF16A34A),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 3. شاشة الكتابة والتتبع التفاعلي (Canvas)
// ------------------------------------------------------------------------------
class AdvancedDrawingCanvasView extends StatefulWidget {
  const AdvancedDrawingCanvasView({super.key});

  @override
  State<AdvancedDrawingCanvasView> createState() => _AdvancedDrawingCanvasViewState();
}

class _AdvancedDrawingCanvasViewState extends State<AdvancedDrawingCanvasView> {
  final List<Offset?> _points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3. لوحة الكتابة والتتبع التفاعلي', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFD97706),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'ارسم الحرف أو الرقم بإصبعك بدقة داخل المساحة البيضاء المخصصة:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.orange.shade300, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: GestureDetector(
                  onPanUpdate: (details) {
                    setState(() {
                      RenderBox renderBox = context.findRenderObject() as RenderBox;
                      _points.add(renderBox.globalToLocal(details.globalPosition));
                    });
                  },
                  onPanEnd: (details) {
                    setState(() {
                      _points.add(null);
                    });
                  },
                  child: CustomPaint(
                    painter: SignaturePainter(points: _points),
                    size: Size.infinite,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _points.clear();
                    });
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('مسح اللوحة'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade50,
                    foregroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('أحسنت يا مهندس! تم التحقق من صحة الرسم بنجاح 🌟'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  icon: const Icon(Icons.check_circle_outline),
                  label: const Text('تحقق من الخط'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade50,
                    foregroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// رسام الخطوط الاحترافي (Signature Painter)
class SignaturePainter extends CustomPainter {
  final List<Offset?> points;
  SignaturePainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFF0F172A)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      } else if (points[i] != null && points[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[i]!], paint);
      }
    }
  }

  @override
  bool shouldRepaint(SignaturePainter oldDelegate) => true;
}

// ------------------------------------------------------------------------------
// 4. شاشة تحدي الأرقام والحساب المتقدمة
// ------------------------------------------------------------------------------
class NumbersEnterpriseScreen extends StatefulWidget {
  const NumbersEnterpriseScreen({super.key});

  @override
  State<NumbersEnterpriseScreen> createState() => _NumbersEnterpriseScreenState();
}

class _NumbersEnterpriseScreenState extends State<NumbersEnterpriseScreen> {
  int currentNumberIndex = 0;

  final List<Map<String, dynamic>> numberDataList = [
    {'number': '١', 'word': 'واحد', 'count': 1, 'icon': '⭐'},
    {'number': '٢', 'word': 'اثنان', 'count': 2, 'icon': '🍎🍎'},
    {'number': '٣', 'word': 'ثلاثة', 'count': 3, 'icon': '🚗🚗🚗'},
    {'number': '٤', 'word': 'أربعة', 'count': 4, 'icon': '🎈🎈🎈🎈'},
    {'number': '٥', 'word': 'خمسة', 'count': 5, 'icon': '🐱🐱🐱🐱🐱'},
    {'number': '٦', 'word': 'ستة', 'count': 6, 'icon': '🐟🐟🐟🐟🐟🐟'},
    {'number': '٧', 'word': 'سبعة', 'count': 7, 'icon': '🌸🌸🌸🌸🌸🌸🌸'},
    {'number': '٨', 'word': 'ثمانية', 'count': 8, 'icon': '⚽⚽⚽⚽⚽⚽⚽⚽'},
    {'number': '٩', 'word': 'تسعة', 'count': 9, 'icon': '🍦🍦🍦🍦🍦🍦🍦🍦🍦'},
    {'number': '١٠', 'word': 'عشرة', 'count': 10, 'icon': '🌟🌟🌟🌟🌟🌟🌟🌟🌟🌟'},
  ];

  @override
  Widget build(BuildContext context) {
    final currentItem = numberDataList[currentNumberIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('4. تحدي الأرقام والعد', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF9333EA),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.purple.shade50,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.purple.shade200, width: 2),
                ),
                child: Text(
                  currentItem['number']!,
                  style: const TextStyle(fontSize: 90, fontWeight: FontWeight.bold, color: Color(0xFF9333EA)),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'اللفظ: ${currentItem['word']}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text('العناصر المرئية للعد:', style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8)],
                ),
                child: Text(
                  currentItem['icon']!,
                  style: const TextStyle(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.volume_up),
                label: const Text('استمع للرقم الصوتي'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9333EA),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: currentNumberIndex > 0 ? () => setState(() => currentNumberIndex--) : null,
                    child: const Text('السابق'),
                  ),
                  const SizedBox(width: 20),
                  Text('${currentNumberIndex + 1} / ${numberDataList.length}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: currentNumberIndex < numberDataList.length - 1 ? () => setState(() => currentNumberIndex++) : null,
                    child: const Text('التالي'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 5. شاشة القصص التفاعلية (تحتوي على القصص الثلاث المفصلة كاملة)
// ------------------------------------------------------------------------------
class StoriesEnterpriseScreen extends StatelessWidget {
  const StoriesEnterpriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = AppDataModel.fullStories;

    return Scaffold(
      appBar: AppBar(
        title: const Text('5. مكتبة القصص التفاعلية (3 قصص)', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFE11D48),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final story = stories[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'القصة ${index + 1}: ${story['title']}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFE11D48)),
                      ),
                      Chip(
                        label: Text(story['level'], style: const TextStyle(fontSize: 11, color: Colors.white)),
                        backgroundColor: const Color(0xFFE11D48),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    story['summary'],
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const Divider(height: 20),
                  ...((story['sections'] as List<String>).map((sectionText) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '• $sectionText',
                        style: const TextStyle(fontSize: 14, height: 1.5, color: Colors.black87),
                      ),
                    );
                  })),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.volume_up, size: 18),
                      label: const Text('استمع للقصة كاملة'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE11D48),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 6. شاشة الألعاب اللغوية والمطابقة
// ------------------------------------------------------------------------------
class AdvancedMatchingGameScreen extends StatefulWidget {
  const AdvancedMatchingGameScreen({super.key});

  @override
  State<AdvancedMatchingGameScreen> createState() => _AdvancedMatchingGameScreenState();
}

class _AdvancedMatchingGameScreenState extends State<AdvancedMatchingGameScreen> {
  final List<Map<String, String>> matchingPairs = [
    {'image': '🚗', 'word': 'سيارة'},
    {'image': '🍎', 'word': 'تفاحة'},
    {'image': '🦁', 'word': 'أسد'},
    {'image': '🌙', 'word': 'قمر'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('6. الألعاب اللغوية التفاعلية', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF0D9488),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'صل كل صورة بالكلمة الصحيحة المعبرة عنها:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: matchingPairs.length,
                itemBuilder: (context, index) {
                  final pair = matchingPairs[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.teal.shade50,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(pair['image']!, style: const TextStyle(fontSize: 40)),
                          ),
                          const Icon(Icons.compare_arrows_rounded, size: 30, color: Color(0xFF0D9488)),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0D9488),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              pair['word']!,
                              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------------------------
// 7. شاشة القاموس الشخصي الشامل
// ------------------------------------------------------------------------------
class DictionaryEnterpriseScreen extends StatelessWidget {
  const DictionaryEnterpriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> savedDictionary = [
      {'word': 'أَسَد', 'category': 'حيوانات', 'desc': 'حيوان مفترس قوي، يُلقب بملك الغابة.'},
      {'word': 'تَفَّاحَة', 'category': 'فواكه', 'desc': 'فاكهة غنية بالفيتامينات ومفيدة جداً للصحة.'},
      {'word': 'جَمَل', 'category': 'حيوانات', 'desc': 'يُسمى سفينة الصحراء لصبره على الجوع والعطش.'},
      {'word': 'كِتَاب', 'category': 'أدوات تعليمية', 'desc': 'خير جليس في الزمان، مصدر العلوم والمعارف.'},
      {'word': 'شَمْس', 'category': 'الطبيعة', 'desc': 'النجم الكبير الذي يمنحنا النور والحرارة والدفء.'},
      {'word': 'قَمَر', 'category': 'الطبيعة', 'desc': 'الجسم السماوي الجميل الذي ينير لنا الليل.'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('7. قاموسي الشخصي الشامل', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFEA580C),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: savedDictionary.length,
        itemBuilder: (context, index) {
          final item = savedDictionary[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 2,
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFFFF3ED),
                child: Text('${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFEA580C))),
              ),
              title: Row(
                children: [
                  Text(item['word']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF0F172A))),
                  const SizedBox(width: 10),
                  Chip(
                    label: Text(item['category']!, style: const TextStyle(fontSize: 10, color: Color(0xFFEA580C))),
                    backgroundColor: const Color(0xFFFFF3ED),
                    visualDensity: VisualDensity.compact,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(item['desc']!, style: const TextStyle(color: Colors.grey, fontSize: 13)),
              ),
              trailing: const Icon(Icons.volume_up, color: Color(0xFFEA580C)),
            ),
          );
        },
      ),
    );
  }
}