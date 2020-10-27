import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'NameCardDetail.dart';

import 'NameCardService.dart';
import 'src/generated/google/protobuf/empty.pb.dart';
import 'src/generated/namecard.pb.dart';

class NameCardList extends StatefulWidget {
  @override
  _NameCardListState createState() => new _NameCardListState();
}

class _NameCardListState extends State<NameCardList> {
  ResponseFuture<GetListResp> futureNameCardListData;
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    super.initState();
    futureNameCardListData = NameCardService().stub.getList(Empty());
  }

  Widget _buildRow(NameCardListItem item) {
    return ListTile(
        title: Text(
          item.name,
          style: _biggerFont,
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NameCardDetail(nameCardId: item.id)));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Name cards'),
      ),
      body: FutureBuilder<GetListResp>(
          future: futureNameCardListData,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error.toString()}");
            }
            if (!snapshot.hasData) {
              return Text("Loading..");
            }

            return ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: snapshot.data.result.length * 2,
                itemBuilder: (context, i) {
                  if (i.isOdd) return Divider();

                  final index = i ~/ 2;
                  return _buildRow(snapshot.data.result[index]);
                });
          }),
    );
  }
}
