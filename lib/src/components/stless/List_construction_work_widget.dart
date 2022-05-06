import 'package:flutter/material.dart';
import 'package:flutter_01/src/components/stless/custom_construction_widget.dart';

class ListConstructionWorkWidget extends StatefulWidget {
  const ListConstructionWorkWidget({Key? key}) : super(key: key);

  @override
  State<ListConstructionWorkWidget> createState() =>
      _ListConstructionWorkWidgetState();
}

class _ListConstructionWorkWidgetState
    extends State<ListConstructionWorkWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> listConstruction = [
      'Welding works',
      'Foundation works',
      'Roofing',
      'Waterproofing',
      'Architecture',
      'Design'
    ];
    return ListView.builder(
      itemCount: listConstruction.length,
      shrinkWrap: true,
      itemBuilder: (_, int index) => CustomConstructionWidget(
        content: listConstruction[index],
        callback: () => {},
        id: index,
      ),
    );
  }
}
