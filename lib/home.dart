import 'package:daves_cakes/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/tab_manager.dart';
 

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override

  State<Home> createState() => HomeState();
  
}

class HomeState extends State<Home> {
   static List<Widget> pages = <Widget>[
    MainScreen(),
    Container(color: Colors.blue, child: const Center (child: Text('Recipies') )),
    Container(color: Colors.amber),
  ];
  TextEditingController _controllerLable = TextEditingController();
  TextEditingController _controllerStock = TextEditingController();


 
  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(builder: (context, tabManager,
child){return Scaffold(

      appBar: AppBar(
        actions:<Widget>[
         // IconButton(onPressed: (){},),
          IconButton(icon: Icon(Icons.menu),
          onPressed: (){},
          alignment: Alignment.topLeft),
          PopupMenuButton(itemBuilder: (BuildContext context){
            return [
              const PopupMenuItem(child: Text('History')),
              const PopupMenuItem(child: Text('Open note'))
            ];
          })
        ],
        backgroundColor: const Color.fromARGB(255, 252, 251, 251),
      ),
      body: pages[tabManager.selectedTab]
      ,
      bottomNavigationBar: BottomNavigationBar(
selectedItemColor: Theme.of(context)
.textSelectionTheme.selectionColor,
// 3
currentIndex: tabManager.selectedTab,
onTap: (index) {
// 4
tabManager.goToTab(index);
},
items: <BottomNavigationBarItem>[
const BottomNavigationBarItem(
icon: Icon(Icons.edit),
label: 'Stock',
),
const BottomNavigationBarItem(
icon: Icon(Icons.book),
label: 'Recipes',
),
const BottomNavigationBarItem(
icon: Icon(Icons.history),
label: 'History',
),
],
),
        // This trailing comma makes auto-formatting nicer for build methods.
    );});
  }

}
