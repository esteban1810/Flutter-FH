import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {

  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> listIndexes = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
      super.initState();
      _scrollController.addListener(_scrollListener);
  }

  void _scrollListener(){
    if((_scrollController.position.pixels+500)>=_scrollController.position.maxScrollExtent){
      fetchData();
      
      // print('entra');
      // addElementsToList();
    }
  }

  Future fetchData() async{
    if(isLoading)return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    addElementsToList();


    if((_scrollController.position.pixels+100)>=_scrollController.position.maxScrollExtent){
      _scrollController.animateTo(
        _scrollController.position.pixels-120, 
        duration: const Duration(seconds: 1), 
        curve: Curves.easeIn
      );
    }

    setState(() {});

    isLoading = false;

  }

  void addElementsToList(){
    int last = listIndexes.length;

    listIndexes.addAll(
      [1,2,3,4,5].map((e) => last+e)
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    

    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(

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

            if(isLoading)
              Positioned(
                bottom: 20,
                left: size.width*.5-30,
                child: const CustomProgressIndicator()
              )
          ],
        ),
      )
    );
  }
}

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primaryLigthColor,
      ),
    );
  }
}