import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  FavoriteButton({this.index, this.favorite = false, this.onChanged});

  final int index;
  final bool favorite;
  final ValueChanged<ButtonParams> onChanged;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(favorite ? Icons.favorite : Icons.favorite_border,
          color: favorite ? Colors.pink : Colors.blue),
      onPressed: handleTap,
      splashColor: Colors.transparent,
    );
  }

  void handleTap() {
    onChanged(new ButtonParams(index, !favorite));
  }
}

class ButtonParams {
  int index;
  bool favoriteValue;

  ButtonParams(this.index, this.favoriteValue);
}
