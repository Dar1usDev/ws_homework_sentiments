import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatefulWidget {
  final String title;
  const CustomSliverAppBar({required this.title, super.key});

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      collapsedHeight: 60.0,
      expandedHeight: 100.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(
          bottom: 20,
        ),
        expandedTitleScale: 1.5,
        title: Text(widget.title),
      ),
      // Реализую потом (возможно)
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 8),
      //     child: OutlinedButton(
      //       onPressed: () {},
      //       style: ButtonStyle(
      //         side: MaterialStateBorderSide.resolveWith(
      //           (Set<MaterialState> states) {
      //             return const BorderSide(
      //               style: BorderStyle.none,
      //             );
      //           },
      //         ),
      //       ),
      //       child: Icon(
      //         Icons.settings,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ],
    );
  }
}
