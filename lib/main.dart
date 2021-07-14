import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'main_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {
  final items = [
    'よ',
    'や',
    'ら',
    'ま',
    'ば',
    'ぱ',
    'は',
    'な',
    'だ',
    'た',
    'ざ',
    'さ',
    'が',
    'か',
    'あ',
    'ょ',
    'ゃ',
    'り',
    'み',
    'び',
    'ぴ',
    'ひ',
    'に',
    'ぢ',
    'ち',
    'じ',
    'し',
    'ぎ',
    'き',
    'い',
    '　',
    'ゆ',
    'る',
    'む',
    'ぶ',
    'ぷ',
    'ふ',
    'ぬ',
    'づ',
    'つ',
    'ず',
    'す',
    'ぐ',
    'く',
    'う',
    '　',
    'ゅ',
    'れ',
    'め',
    'べ',
    'ぺ',
    'へ',
    'ね',
    'で',
    'て',
    'ぜ',
    'せ',
    'げ',
    'け',
    'え',
    'ん',
    'わ',
    'ろ',
    'も',
    'ぼ',
    'ぽ',
    'ほ',
    'の',
    'ど',
    'と',
    'ぞ',
    'そ',
    'ご',
    'こ',
    'お'
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'なまえをかきましょう';
    String inputText = '';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ChangeNotifierProvider<MainModel>(
          create: (_) => MainModel(),
          child: Consumer<MainModel>(builder: (_, model, __) {
            return Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 15,
                    children: List.generate(75, (index) {
                      return Center(
                        child: TextButton(
                          onPressed: () {
                            model.appendText('${items[index]}');
                          },
                          child: Text('${items[index]}'),
                        ),
                      );
                    }),
                  ),
                ),
                Text(
                  model.getText(),
                  style: TextStyle(fontSize: 24, color: Colors.indigo),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
