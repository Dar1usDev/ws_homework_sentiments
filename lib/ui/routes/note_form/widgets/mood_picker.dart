import 'package:flutter/material.dart';

class MoodPicker extends StatefulWidget {
  const MoodPicker({super.key});

  @override
  State<MoodPicker> createState() => _MoodPickerState();
}

class _MoodPickerState extends State<MoodPicker> {
  int selectedIndex = 5;

  void onIconTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MoodIconButton(
          parentsState: this,
          iconIndex: 5,
        ),
        MoodIconButton(
          parentsState: this,
          iconIndex: 4,
        ),
        MoodIconButton(
          parentsState: this,
          iconIndex: 3,
        ),
        MoodIconButton(
          parentsState: this,
          iconIndex: 2,
        ),
        MoodIconButton(
          parentsState: this,
          iconIndex: 1,
        ),
      ],
    );
  }
}

class MoodIconButton extends StatelessWidget {
  final _MoodPickerState parentsState;
  final int iconIndex;
  const MoodIconButton({
    required this.parentsState,
    required this.iconIndex,
    super.key,
  });

  final double activeIconOpacity = 1;
  final double shadowIconOpacity = 0.4;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          parentsState.onIconTap(iconIndex);
        },
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Opacity(
            opacity: parentsState.selectedIndex == iconIndex
                ? activeIconOpacity
                : shadowIconOpacity,
            child: Image.asset(
              'lib/assets/icons/mood/mood$iconIndex.png',
              scale: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
