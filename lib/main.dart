import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {

  final items = ['よ','や','ら','ま','ば','ぱ','は','な','だ','た','ざ','さ','が','か','あ',
    'ょ','ゃ','り','み','び','ぴ','ひ','に','ぢ','ち','じ','し','ぎ','き','い','　','ゆ','る',
    'む','ぶ','ぷ','ふ','ぬ','づ','つ','ず','す','ぐ','く','う','　','ゅ','れ','め','べ','ぺ',
    'へ','ね','で','て','ぜ','せ','げ','け','え','ん','わ','ろ','も','ぼ','ぽ','ほ','の','ど','と',
    'ぞ','そ','ご','こ','お'];
  @override
  Widget build(BuildContext context) {
    final title = 'なまえをかきましょう';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(

          crossAxisCount: 15,

          children: List.generate(75, (index) {
            return Center(
              child: Text(
                '${items[index]}',
                style: Theme.of(context).textTheme.headline5,
              ),
            );
          }),
        ),
      ),
    );
  }
}
