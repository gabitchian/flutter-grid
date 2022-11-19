import 'package:flutter/material.dart';
import 'package:flutter_grid/widgets/page.dart';

class Pagination extends StatefulWidget {
  int selectedPage;
  int numberOfPages;
  Function onClick;
  Pagination(
      {Key? key,
      required this.numberOfPages,
      required this.onClick,
      this.selectedPage = 1})
      : super(key: key);

  @override
  State<Pagination> createState() => _Pagination();
}

class _Pagination extends State<Pagination> {
  late List<int> pages;

  @override
  void initState() {
    pages = List.generate(widget.numberOfPages, (index) => index);
  }

  @override
  Widget build(BuildContext context) {
    Widget spacing = SizedBox(
      width: 20,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            InkWell(
              child: Icon(Icons.arrow_back_ios, color: Colors.cyan[700]),
              onTap: () {
                if (widget.selectedPage > 0) {
                  widget.onClick(widget.selectedPage - 1);
                }
              },
            ),
            spacing,
            Wrap(
              spacing: 8,
              children: pages
                  .map(
                    (e) => MyPage(
                      num: e,
                      selected: e == widget.selectedPage,
                      onClick: widget.onClick,
                    ),
                  )
                  .toList(),
            ),
            spacing,
            InkWell(
              child: Icon(Icons.arrow_forward_ios, color: Colors.cyan[700]),
              onTap: () {
                if ((widget.numberOfPages - 1) > widget.selectedPage) {
                  widget.onClick(widget.selectedPage + 1);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
