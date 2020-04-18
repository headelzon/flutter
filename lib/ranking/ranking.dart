import 'package:Stonoga_App/ranking/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

List<String> files = [
  'Chuj z wami',
  'To jest dramat',
  'Ja mam to w piździe',
  'Wypierdole jeszcze dzisiaj',
  'Karakan',
  'Mam w dupie jak sie wyrażam',
  'Nie warto było',
  'Odbieraj telefon',
  'Pisowskie śmiecie',
  'Platforma was tak nie wyruchała',
  'Sumliński',
  'Szkoda gadać',
  'Trzeba was ruchać',
  'Ziobro, zobaczysz'
];
List<int> scores =
    List.generate(files.length, (int index) => files.length - index);
List<bool> favorites = List.generate(files.length, (int index) => false);

class RankingWidget extends StatefulWidget {
  @override
  _RankingWidgetState createState() => _RankingWidgetState();
}

class _RankingWidgetState extends State<RankingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: files.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              margin: EdgeInsets.only(bottom: 8.0),
              height: 50,
              color: Colors.grey[200],
              child: Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(files.elementAt(index)),
                    ),
                    flex: 7,
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Text(scores.elementAt(index).toString()),
                        Icon(Icons.arrow_drop_up, color: Colors.green)
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: FavoriteButton(
                          favorite: favorites.elementAt(index),
                          index: index,
                          onChanged: handleFavorite,
                        ),
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ));
        },
      ),
    );
  }

  void handleFavorite(ButtonParams event) {
    setState(() {
      favorites[event.index] = event.favoriteValue;
      event.favoriteValue ? scores[event.index]++ : scores[event.index]--;
    });
  }
}
