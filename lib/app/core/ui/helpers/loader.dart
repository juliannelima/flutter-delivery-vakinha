import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin Loader<T extends StatefulWidget> on State<T> {
  var isOPen = false;

  void showLoader() {
    if (!isOPen) {
      isOPen = true;
      showDialog(
        context: context,
        builder: (context) {
          return LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white, 
            size: 60
          );
        },
      );
    }
  }

  void hideLoader() {
    if(isOPen) {
      isOPen = false;
      Navigator.of(context).pop();
    }
  }
}
