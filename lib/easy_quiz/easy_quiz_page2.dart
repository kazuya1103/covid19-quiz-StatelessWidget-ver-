import 'package:covid19quizstatelesswidget/app_background.dart';
import 'package:covid19quizstatelesswidget/easy_quiz/easy_quiz_page3.dart';
import 'package:flutter/material.dart';

class EasyQuizPage2 extends StatelessWidget {
  EasyQuizPage2(this.counter);

  int counter;

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
                    'talk.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q3 感染症対策で会話をする時は何をつける？',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                RaisedButton(
                  child: Text('眼鏡'),
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
                                            EasyQuizPage3(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('ピアス'),
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
                                          EasyQuizPage3(counter),
                                    ));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('手袋'),
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
                                            EasyQuizPage3(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('マスク'),
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
                                          EasyQuizPage3(counter),
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
