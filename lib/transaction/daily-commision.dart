import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:ridderapp/model/commision.dart';
import 'package:ridderapp/pages/loading_indicator.dart';
import 'package:ridderapp/repository/transactionrepo.dart';


class DailyCommision extends StatefulWidget {
  DailyCommision({Key key}) : super(key: key);

  _DailyCommisionState createState() => _DailyCommisionState();
}

class _DailyCommisionState extends State<DailyCommision> {
  final _dateController = TextEditingController();
  final TrxRepository _repo = new TrxRepository();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  DateTime _date;

  @override
  void initState() {
    super.initState();
    _date = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
         key: _scaffoldKey,
        appBar: AppBar(
          title: Text("Daily Commmision"),
        ),
        body: FutureBuilder(
            future: _repo.getDailyCommision(_date),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return Center(
                      child: SizedBox(
                    child: CircularProgressIndicator(),
                    height: 30.0,
                    width: 30.0,
                  ));
                default:
                  if (snapshot.hasError)
                    return new Center(
                      child: Text(
                        '${snapshot.error}',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontStyle: FontStyle.italic,
                            fontSize: 18.0),
                      ),
                    );
                  else
                    return createListView(context, snapshot);
              }
            }),
      ),
    );
  }

  Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
    // setState(() {
    //   _dataAvailable =true;
    // });
   
    List<Commision> transactions = snapshot.data as List<Commision>;
    if (transactions.length==0){
      return Container(
        
        decoration: BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          color: Colors.white),
        child: Center(child:Text("You have No Order.",
               style: TextStyle(fontSize: 25,
               color: Colors.redAccent,
               fontWeight: FontWeight.bold ),)),
      );
    }
    return AnimatedList(
        key: _listKey,
        initialItemCount: transactions.length,
        itemBuilder: (BuildContext context, int index, animation) {
          return listItem(transactions[index], index, animation);
        });
    }

  Widget listItem(Commision item, int index, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child:Container(
        padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
        child: Row(children: <Widget>[
           Expanded(child: Text(item.order_No),),
           Expanded(child: Text(item.commission.toString())),
        ],) ,
        ),
        ); 
  }
}
