import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> listIndexes = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
      super.initState();
      _scrollController.addListener(_scrollListener);
  }

  void _scrollListener(){
    if((_scrollController.position.pixels+500)>=_scrollController.position.maxScrollExtent){
      print('entra');
      addElementsToList();
    }
  }

  void addElementsToList(){
    int last = listIndexes.length;
    print(listIndexes);

    listIndexes.addAll(
      [1,2,3,4,5].map((e) => last+e)
    );
    print(listIndexes);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          
          controller: _scrollController,
          
          itemCount: listIndexes.length,
          //Widget Function(BuildContext, int)
          itemBuilder: (context,index)=>FadeInImage(
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://picsum.photos/500/200?image=${listIndexes[index ]}')
          )
        ),
      )
    );
  }
}