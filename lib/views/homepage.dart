import 'package:flutter/material.dart';
import 'package:flutter_application_2/provider/DataProvider.dart';
import 'package:provider/provider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Provider.of<Dataprovider>(context, listen: false).getArticelData(context);
  }

  @override
  Widget build(BuildContext context) {
    print("test1");
    final articalMdl = Provider.of<Dataprovider>(context);
    return Scaffold(
      body:articalMdl.loading==true?Container(child: CircularProgressIndicator(),): ListView.builder(
          itemCount: articalMdl.data?.length,
          itemBuilder: (ctx, index) {
            return Container(
              child: Text(articalMdl.data![index].source?.name??"empty"),
            );
          }),
    );
  }
}
