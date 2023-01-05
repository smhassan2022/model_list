import 'package:flutter/material.dart';
import 'Model/CountryModel.dart';

class MyDataScreen extends StatefulWidget {
  const MyDataScreen({Key? key}) : super(key: key);

  @override
  _MyDataScreenState createState() => _MyDataScreenState();
}

class _MyDataScreenState extends State<MyDataScreen> with SingleTickerProviderStateMixin {
  TabController? _controller;

  List<whatsAppModel> muneebDataList=[];

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();

    whatsAppModel muneebDataList1=whatsAppModel("Sir Murtaza", "Okay, beta", "9:15 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList2=whatsAppModel("Aptech Sheroz","Done","3:40 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList3=whatsAppModel( "Aptech Zain","Nahi horaha","2:09 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList4=whatsAppModel( "Vidan","Aj nahi aonga","6:55 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList5=whatsAppModel( "Imran","Bank is close","6:00 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList6=whatsAppModel( "Tabish Faridi","I have changed your teacher","10:12 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList7=whatsAppModel( "Sir Shahnawaz","I will provide book","9:28 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList8=whatsAppModel( "Naureen Aptech","Admission Closed","7:12 am", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList9=whatsAppModel( "Manish","Today is my class","3:13 pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    whatsAppModel muneebDataList10=whatsAppModel( "Abdul Malik","3 Post designed","4:44   pm", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");

    muneebDataList.add(muneebDataList1);
    muneebDataList.add(muneebDataList2);
    muneebDataList.add(muneebDataList3);
    muneebDataList.add(muneebDataList4);
    muneebDataList.add(muneebDataList5);
    muneebDataList.add(muneebDataList6);
    muneebDataList.add(muneebDataList7);
    muneebDataList.add(muneebDataList8);
    muneebDataList.add(muneebDataList9);
    muneebDataList.add(muneebDataList10);


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Hey! WhatsApp"),
        backgroundColor: Color(0xff075E54),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.camera_alt_outlined)
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.more_vert)
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              text: ("Chats"),
            ),
            Tab(
              text: ("Status"),
            ),
            Tab(
              text: ("Call Logs"),
            )
          ],
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(1),
        itemCount: muneebDataList.length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey.shade300,
          margin: EdgeInsets.only(top: 1),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
                   backgroundImage: NetworkImage(muneebDataList[index].image),
            ),
            title: Text(muneebDataList[index].name),
            subtitle: Text(muneebDataList[index].messages),
            trailing: Text(muneebDataList[index].time),
          ),

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:()  {} ,
        child: Icon(Icons.chat),
        backgroundColor: Color(0xff075E54),
      ),
    );
  }
}

