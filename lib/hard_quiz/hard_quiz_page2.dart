import 'package:covid19quizstatelesswidget/app_background.dart';
import 'package:covid19quizstatelesswidget/hard_quiz/hard_quiz_page3.dart';
import 'package:flutter/material.dart';

class HardQuizPage2 extends StatelessWidget {
  HardQuizPage2(this.counter);

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
                    'machine.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q3 動脈血酸素飽和度を測定する装置の名称は？',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                RaisedButton(
                  child: Text('クイックナビリーダー'),
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
                                            HardQuizPage3(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('パルスオキシメーター'),
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
                                            HardQuizPage3(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('   定性免疫診断装置    '),
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
                                            HardQuizPage3(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('     STDチェッカー     '),
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
                                          HardQuizPage3(counter),
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
