import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'common/constant.dart';
import 'common/sizeConfig.dart';
import 'model/coinPrice.dart';
import 'package:flutter/material.dart';
import 'package:apihandler/apiHandler.dart';

class CoinPriceRankingPage extends StatefulWidget {
  CoinPriceRankingPage({Key key}) : super(key: key);

  @override
  _CoinPriceRankingPageState createState() => _CoinPriceRankingPageState();
}

class _CoinPriceRankingPageState extends State<CoinPriceRankingPage> {
  CoinPriceList coinPriceList;
  Timer timer;
  bool visible = true;

  Future<CoinPriceList> getExchangeData() async {
    /// getTopErc20CoinPrice
      var result = await apiHandler.get(
          "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=tether%2Cchainlink%2Cbinance-usd%2Cusd-coin%2Cyearn-finance%2Cdai%2Comisego%2Cbinancecoin%2Cuniswap%2Cvechain%2Caave%2Chuobi-token%2Csushi%2Ctrue-usd%2Ccdai%2Cswipe%2Cbasic-attention-token%2Cusdk%2Cwrapped-bitcoin%2Czilliqa%2Chavven%2Cokb%2Cband-protocol%2Cmaker%2Chusd%2C0x%2Cpaxos-standard%2Ccompound-ether%2Creserve-rights-token%2Cbalancer&order=market_cap_desc&per_page=100&page=1&sparkline=false");
      // Map<String, dynamic> resultData = jsonDecode(result);
      CoinPriceList coinPriceListData = CoinPriceList.fromJson(result);

    if (this.mounted) {
      setState(() {
        visible = false;
      });
      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          coinPriceList = coinPriceListData;
          visible = true;
        });
      });
    }
    return coinPriceList;
  }

  @override
  void initState() {
    super.initState();
    //your code
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    SizeConfig(context: context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 0, bottom: 30),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "images/banner.png",
                fit: BoxFit.contain,
              ),
          new Stack(
            children: <Widget>[ Container(
                  width: size.blockSizeHorizontal * 100,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage("images/coinRankingBackGroundImage.png"),
                      fit: BoxFit.contain,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(15),
                child:Column(
                 //// your code
                  )),
            ],
          )
            ],
          ),
        )),
      ),
    );
  }
}
