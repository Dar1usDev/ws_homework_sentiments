import 'dart:math';

import 'package:flutter/material.dart';

class NoteCard extends StatefulWidget {
  final int iconIndex = 5;
  final String title = 'Название';
  final String content = 'Текст текст текст текст текст текст текст';
  final String date = '11.09.2001';

  const NoteCard({super.key});

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(12),
          ),
          border: Border.all(
            color: Theme.of(context).primaryColorLight,
            width: 1,
          ),
        ),
        height: 150,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: 100,
                  child: Center(
                    child: Image.asset(
                      'lib/assets/icons/mood/mood${Random().nextInt(4) + 1}.png',
                      scale: 1.0,
                      width: 65,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Text(
                            widget.title,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(
                          widget.content,
                          softWrap: true,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                            child: Text(
                              widget.date,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
