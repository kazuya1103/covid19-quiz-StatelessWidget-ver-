import 'package:covid19quizstatelesswidget/app_background.dart';
import 'package:covid19quizstatelesswidget/normal_quiz/normal_quiz_page1.dart';
import 'package:flutter/material.dart';

class NormalQuizPage0 extends StatelessWidget {
  NormalQuizPage0(this.counter);

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
                    'sick_kansensyou.png',
                    height: 250,
                    width: 250,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q1 新型コロナはどのように感染する？',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                RaisedButton(
                  child: Text('飛沫感染'),
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
                                            NormalQuizPage1(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('空気感染'),
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
                                            NormalQuizPage1(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('血液感染'),
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
                                            NormalQuizPage1(counter),
                                      ));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                RaisedButton(
                  child: Text('母子感染'),
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
                                          NormalQuizPage1(counter),
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
