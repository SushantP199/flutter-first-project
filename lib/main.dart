import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Widget topRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          radius: 20.0,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.help_outline),
          ),
        ),
        SizedBox(width: 80.0),
        // Padding(padding: EdgeInsets.symmetric(horizontal: 70.0)),
        CircleAvatar(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          radius: 20.0,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.exit_to_app),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          radius: 20.0,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          radius: 20.0,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
        ),
      ],
    );
  }

  Widget bodyOptionsOne() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 3.5, 4.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/MyWalletBg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140.0, 15.0, 5.0, 0.0),
                child: Image(
                  width: 20.0,
                  image: AssetImage('images/wallet.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45.0, 50.0, 0.0, 0.0),
                child: Text(
                  'My Wallet',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(3.5, 0.0, 30.0, 4.0),
                // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/MarketPlaceBg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110.0, 15.0, 0.0, 0.0),
                child: Image(
                  width: 20.0,
                  image: AssetImage('images/cart.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                child: Text(
                  'MarketPlace',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bodyOptionsTwo() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 4.0, 3.5, 0.0),
                // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/AiiHealthBg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140.0, 15.0, 5.0, 0.0),
                child: Image(
                  width: 20.0,
                  image: AssetImage('images/health.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(45.0, 50.0, 0.0, 0.0),
                child: Text(
                  'AiiHealth',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(3.5, 4.0, 30.0, 0.0),
                // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  onPressed: () {},
                  child: Image(
                    image: AssetImage('images/DeviceNetBg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(110.0, 15.0, 0.0, 0.0),
                child: Image(
                  width: 20.0,
                  image: AssetImage('images/net.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                child: Text(
                  'Device Network',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    /// Turn off screen rotation
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, ]
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Asset',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
		Padding(
		  padding: EdgeInsets.fromLRTB(30.0, 30.0, 0.0, 0.0),
		  child: topRow(),
		),
                Container(
                  margin: EdgeInsets.fromLTRB(120.0, 40.0, 120.0, 10.0),
                  child: Image.asset('images/logo.png'),
                ),
                Text(
                  '#MyDataMyAsset',
                  style: TextStyle(
		    fontFamily: 'Open Sans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 50.0),
                bodyOptionsOne(),
                bodyOptionsTwo(),
              ],
            ),
          ),
        ),
        floatingActionButton: InkWell(
          child: Text(
            'Privacy Policy | Terms & Conditions',
            style: TextStyle(
	            fontFamily: 'Open Sans',
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          onTap: () {} //Add link inside as onTap:(){launch('your link to wake up t & c')}
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
