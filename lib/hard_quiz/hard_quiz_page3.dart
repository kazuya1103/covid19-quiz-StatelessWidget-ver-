import 'package:covid19quizstatelesswidget/app_background.dart';
import 'package:covid19quizstatelesswidget/hard_quiz/hard_quiz_page4.dart';
import 'package:flutter/material.dart';

class HardQuizPage3 extends StatelessWidget {
  HardQuizPage3(this.counter);

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
      child: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset(
                    'meneki_bad.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q4 動脈血酸素飽和度は何％以下だと感染の疑いがある？',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                RaisedButton(
                  child: Text('20%'),
                  onPressed: () {
                    //正解か不正解のコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                                child: Text('次の問題へ'),
                                onPressed: () {
                                  //次の問題への画面遷移
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HardQuizPage4(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('50%'),
                  onPressed: () {
                    //正解か不正解のコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                                child: Text('次の問題へ'),
                                onPressed: () {
                                  //次の問題への画面遷移
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HardQuizPage4(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('70%'),
                  onPressed: () {
                    //正解か不正解のコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                                child: Text('次の問題へ'),
                                onPressed: () {
                                  //次の問題への画面遷移
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HardQuizPage4(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('90%'),
                  onPressed: () {
                    //正解か不正解のコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                counter++;
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HardQuizPage4(counter),
                                    ));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ]),
        ),
      ),
    ));
  }
}
