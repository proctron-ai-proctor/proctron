import 'package:flutter/material.dart';

void pShowPersistentLoadingWheel(
  BuildContext context, {
  String text = 'Working on it..',
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(20),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20),
                Text(text),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void pPopLoadingWheel(BuildContext context) {
  if (!(ModalRoute.of(context)?.isCurrent ?? false)) {
    Navigator.of(context).pop();
  }
}
