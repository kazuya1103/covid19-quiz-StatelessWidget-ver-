import 'package:covid19quizstatelesswidget/answer_page.dart';
import 'package:covid19quizstatelesswidget/app_background.dart';
import 'package:flutter/material.dart';

class HardQuizPage4 extends StatelessWidget {
  HardQuizPage4(this.counter);

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
      child: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Center(
              child: Image.asset(
                'china.png',
                height: 250,
                width: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Q5 コロナウイルスが発生した中国の武漢はどこ？',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            RaisedButton(
              child: Text('広東省'),
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
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('山東省'),
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
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('湖北省'),
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
                                    builder: (context) => AnswerPage(counter),
                                  ));
                            }),
                      ],
                    );
                  },
                );
              },
            ),
            RaisedButton(
              child: Text('湖南省'),
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
                                  builder: (context) => AnswerPage(counter),
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
