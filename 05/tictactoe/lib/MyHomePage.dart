import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //TODO: link up images
  AssetImage cross = AssetImage("images/cross.png");
  AssetImage circle = AssetImage("images/circle.png");
  AssetImage edit = AssetImage("images/edit.png");

  List<String> gameState;
  String message;
  var isCross = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
      message = "";
    });
  }

  resetGame() {
    setState(() {
       gameState = [
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
        "empty",
      ];
      message = "";
    });
  }

  AssetImage getImage(String value) {
    switch (value) {
      case ('empty'):
        return edit;
        break;
      case ('cross'):
        return cross;
        break;
      case ('circle'):
        return circle;
        break;
    }
  }

  playGame(int index) {
    if (this.gameState[index] == "empty") {
      setState(() {
        if (isCross) {
          gameState[index] = "cross";
        } else {
          gameState[index] = "circle";
        }
        isCross = !isCross;
        checkWin();
      });
    }
  }

  checkWin() {
    if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[1]) && 
        (gameState[1] == gameState[2])) {
          setState(() {
            message = '${this.gameState[0]} wins';
          });
      } 
      else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) && 
        (gameState[4] == gameState[5])) {
          setState(() {
            message = '${this.gameState[3]} wins';
          });
        } 
        else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) && 
        (gameState[7] == gameState[8])) {
          setState(() {
            message = '${this.gameState[6]} wins';
          });
        }
        else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) && 
        (gameState[7] == gameState[8])) {
          setState(() {
            message = '${this.gameState[6]} wins';
          });
        }
        else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[3]) && 
        (gameState[3] == gameState[6])) {
          setState(() {
            message = '${this.gameState[0]} wins';
          });
        }
        else if ((gameState[1] != 'empty') &&
        (gameState[1] == gameState[4]) && 
        (gameState[4] == gameState[7])) {
          setState(() {
            message = '${this.gameState[1]} wins';
          });
        }
        else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[5]) && 
        (gameState[5] == gameState[8])) {
          setState(() {
            message = '${this.gameState[2]} wins';
          });
        }
        else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[4]) && 
        (gameState[4] == gameState[8])) {
          setState(() {
            message = '${this.gameState[0]} wins';
          });
        }
        else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[4]) && 
        (gameState[4] == gameState[6])) {
          setState(() {
            message = '${this.gameState[2]} wins';
          });
        }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TicTacToe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0
              ),
              itemCount: this.gameState.length,
              itemBuilder: (context, i) => SizedBox(
                width: 100.0,
                height: 100.0,
                child: MaterialButton(
                  onPressed: () {
                    this.playGame(i);
                  },
                  child: Image(
                    image: this.getImage(this.gameState[i]),
                  ),
                ),
              ), 
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              this.message,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            color: Colors.purple,
            minWidth: 300.0,
            height: 50.0,
            child: Text('Reset Game',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            onPressed: () {
              this.resetGame();
            },
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "LearnCodeOnline",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}