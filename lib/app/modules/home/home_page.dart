import 'package:desafio_08022020/app/modules/home/home_controller.dart';
import 'package:desafio_08022020/app/shared/custom_chip/custom_chip_widget.dart';
import 'package:desafio_08022020/app/shared/triade_ranking/triade_ranking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Leaderboard"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00261B),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          child: Observer(builder: (_) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CustomChipWidget(
                  label: "Today",
                  selected: controller.selectedIndex == 0,
                  onSelected: () => controller.changeIndex(0),
                ),
                CustomChipWidget(
                  label: "Week",
                  selected: controller.selectedIndex == 1,
                  onSelected: () => controller.changeIndex(1),
                ),
                CustomChipWidget(
                  label: "Month",
                  selected: controller.selectedIndex == 2,
                  onSelected: () => controller.changeIndex(2),
                ),
              ],
            );
          }),
          preferredSize: Size.fromHeight(40),
        ),
      ),
      body: Observer(builder: (_) {
        var size = controller.listaUsuariso.length;

        controller.listaUsuariso
            .sort((ndata, other) => other.points.compareTo(ndata.points));

        return ShaderMask(
          child: ListView.builder(
            itemCount: size,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return TriadeRanking(
                    first: controller.listaUsuariso[0],
                    second: controller.listaUsuariso[1],
                    third: controller.listaUsuariso[2]);
              }

              if (index < 3) {
                return Container();
              }
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "$index",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Icon(
                          Icons.arrow_drop_up,
                          color: Color(0xff21EEB6),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.circular(50)),
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                controller.listaUsuariso[index].picture),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              controller.listaUsuariso[index].name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          Text(
                            "${controller.listaUsuariso[index].points}",
                            style: TextStyle(
                                color: Color(0xff45C9A1),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Color(0xff002619)
              ],
            ).createShader(bounds);
          },
          blendMode: BlendMode.dstOut,
        );
      }),
    );
  }
}
