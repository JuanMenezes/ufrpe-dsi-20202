// ignore_for_file: sized_box_for_whitespace, unused_import, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Menu.dart';

final List<Data> dataGraph = [
  Data('2020', 50, Colors.blue),
  Data('2019', 60, Colors.orange),
  Data('2017', 30, Colors.green),
  Data('2018', 24, Colors.red),
];


class Dashboard extends StatefulWidget {
  Dashboard({required this.title});
  static String id = 'Dashboard';

  final String title;

  @override
  _Dashboard createState() => _Dashboard();
}

class Data {
  final String ano;
  final int alunos;
  final Color barColor;

  Data(this.ano, this.alunos, this.barColor);
}

class _Dashboard extends State<Dashboard> {
  final _auth = FirebaseAuth.instance;


  void getUsuario () async {
    try {
      final user =  _auth.currentUser!;
      print(user.email);
    } catch (e) {
      print (e);
    }

  }
  Material myTextItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.deepPurple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material myCircularItems(String title, String subtitle) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.deepPurple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material mychart1Items(String title, String priceVal, String subtitle) {
    final List<Data> dataGraph = [
      Data('2020', 50, Colors.blue),
      Data('2019', 60, Colors.orange),
      Data('2017', 30, Colors.green),
      Data('2018', 24, Colors.red),
    ];
    List<charts.Series<Data, String>> series = [
      charts.Series(
          data: dataGraph,
          id: 'Alunos',
          domainFn: (Data pops, _) => pops.ano,
          measureFn: (Data pops, _) => pops.alunos,
          colorFn: (Data pops, _) =>
              charts.ColorUtil.fromDartColor(pops.barColor))
    ];
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(50.0),
      shadowColor: Colors.deepPurple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      priceVal,
                      style: const TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                        height: 130, // height of the Container widget
                        width: 190,
                        child: charts.BarChart(series)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Material mychart2Items(String title, String priceVal, String subtitle) {
    // é só editar aqui para o outro gráfico
    final List<Data> dataGraph = [
      Data('2020', 50, Colors.blue),
      Data('2019', 60, Colors.orange),
      Data('2017', 30, Colors.green),
      Data('2018', 24, Colors.red),
    ];
    List<charts.Series<Data, String>> series = [
      charts.Series(
          data: dataGraph,
          id: 'Alunos',
          domainFn: (Data pops, _) => pops.ano,
          measureFn: (Data pops, _) => pops.alunos,
          colorFn: (Data pops, _) =>
              charts.ColorUtil.fromDartColor(pops.barColor))
    ];
    return Material(
      color: Colors.white,
      elevation: 14.0,
      borderRadius: BorderRadius.circular(24.0),
      shadowColor: Colors.deepPurple,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                          height: 190, // height of the Container widget
                          width: 150,
                          child: charts.BarChart(
                            // se quiser mudar o gráfico mudar por aqui

                            series,
                            vertical: false,
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: const Color(0xffE5E5E5),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: mychart1Items("Porcentagem de acurácia", "60.4%", ""),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: myCircularItems("Investimento", "68 mil"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: myTextItems("Funcionários", "60"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: myTextItems("Alunos", "200"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: mychart2Items("Gráfico aluno x anos", "", ""),
            ),
          ],
          staggeredTiles: const [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(2, 250.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(2, 120.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}