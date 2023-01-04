import 'package:flutter/material.dart';
import 'Model/CountryModel.dart';

class MyDataScreen extends StatefulWidget {
  const MyDataScreen({Key? key}) : super(key: key);

  @override
  _MyDataScreenState createState() => _MyDataScreenState();
}

class _MyDataScreenState extends State<MyDataScreen> {

  List<String> names=["Pak", "Ind", "Turkey"];
  List<String> namesCap=["Islamabad", "Delhi", "Baku"];

  List<CountryModel> countyList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    CountryModel countryModel1=CountryModel("Pak","92","Islamabad", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    CountryModel countryModel2=CountryModel("Srilanka","81","Dhaka", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
    CountryModel countryModel3=CountryModel( "Iran","56","Pooka", "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");

    countyList.add(countryModel1);
    countyList.add(countryModel2);
    countyList.add(countryModel3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
           Container(
             alignment: Alignment.center,
                color: Colors.red,
                child: (

                  ElevatedButton.icon(onPressed: (){
                  print("You pressed Camera");},
                      icon: Icon(Icons.camera_enhance_outlined), label: Text("")
                      )
                ),
             ),
          Container(
            child: (
                ElevatedButton.icon(onPressed: (){
                  print("You pressed Search");},
                    icon: Icon(Icons.search), label: Text("")
                )
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(1),
        itemCount: countyList.length,
        itemBuilder: (context, index) => Container(
          color: Colors.grey.shade300,
          margin: EdgeInsets.only(top: 1),
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
                   backgroundImage: NetworkImage(countyList[index].image),
            ),
            title: Text(countyList[index].name),
            subtitle: Text(countyList[index].countryCode),
            trailing: Text(countyList[index].capital),
          ),

        ),)
    );
  }
}

