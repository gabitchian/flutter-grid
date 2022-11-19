import 'package:flutter/material.dart';

import 'package:flutter_grid/shared/extensions/list_extension.dart';

import 'package:flutter_grid/widgets/card.dart';
import 'package:flutter_grid/widgets/pagination.dart';

class MyPage extends StatefulWidget {
  bool selected;
  int num;
  Function onClick;
  MyPage(
      {Key? key,
      required this.num,
      required this.onClick,
      this.selected = false})
      : super(key: key);

  @override
  State<MyPage> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: widget.selected ? Colors.cyan[700] : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.fromBorderSide(
            BorderSide(color: Colors.cyan),
          ),
        ),
        child: Text(
          (widget.num + 1).toString(),
          style: TextStyle(
            color: widget.selected ? Colors.white : Colors.cyan[700],
          ),
        ),
      ),
      onTap: () {
        widget.onClick(widget.num);
      },
    );
  }
}
