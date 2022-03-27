

import 'package:flutter/material.dart';

class WidgetCardType2 extends StatelessWidget {
  const WidgetCardType2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: FadeInImage(
        image: NetworkImage('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
      ),
    );
  }
}
