import 'package:desafio_08022020/app/modules/models/usuario_model.dart';
import 'package:flutter/material.dart';

class TriadeRanking extends StatelessWidget {
  final UsuarioModel first;
  final UsuarioModel second;
  final UsuarioModel third;

  const TriadeRanking({Key key, this.first, this.second, this.third})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .4,
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3 - 80,
          top: 40,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "2",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_up,
                color: Color(0xff34EBBF),
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                size: 100,
                image: first.picture,
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3 + 100,
          top: 40,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "3",
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                size: 100,
                image: first.picture,
              ),
            ],
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 3,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "1",
                style: TextStyle(color: Colors.white),
              ),
              Image.network(
                  "https://lh3.googleusercontent.com/proxy/_PjfCXLXySnp-3Op6HlolM3aZq3lQ3ta8bZqLGIjT8qFaM5TpZ4LoUyhAB5t9EDJCkkVi_HSjKwtx8yYCCh5Vp9gHFjc8KypmuklT_0w8fGrZI8rXDDejLkM1dXFJTDgm8Q8hKWS8NG9yJUht9ALSBuVoDgiLQ", height: 40,),
              SizedBox(
                height: 10,
              ),
              CustomCircleAvatar(
                usuario: first,
                noGlow: false,
                size: 120,
                image: first.picture,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  final double size;
  final String image;
  final UsuarioModel usuario;
  final bool noGlow;

  const CustomCircleAvatar(
      {Key key, this.size, this.image, this.usuario, this.noGlow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                width: noGlow ? 3 : 5,
                color: Color(0xff17FAC3),
              ),
              boxShadow: noGlow
                  ? []
                  : [
                      BoxShadow(
                        color: Color(0xff17FAC3),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ],
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          usuario.name,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          "${usuario.points}",
          style: TextStyle(
              color: Color(0xff43A783),
              fontWeight: FontWeight.bold,
              fontSize: 20),
        )
      ],
    );
  }
}
