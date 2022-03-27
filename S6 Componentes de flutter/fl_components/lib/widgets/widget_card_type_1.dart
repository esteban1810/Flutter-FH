import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class WidgetCardType1 extends StatelessWidget {
  const WidgetCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.book_outlined,color: AppTheme.primaryLigthColor,),
            title: Text('Soy un titulo'),
            subtitle: Text('Exercitation incididunt aliqua cillum sit nostrud Lorem mollit.Non consequat et irure culpa proident.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancel')
                  
                ),
                TextButton(
                  onPressed: (){}, 
                  child: const Text('OK')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}