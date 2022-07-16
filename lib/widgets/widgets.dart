import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;

  const CardContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: _createCardShape(),
        child: child,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ]);
}

class HeaderPhoto extends StatelessWidget {
  const HeaderPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final photoSize = size.height * 0.55;
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      height: photoSize,
      child: const ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100)),
          child: Image(
            image: AssetImage('assets/img/squier-face.jpeg'),
          )),
    ));
  }
}


class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const PurpleBox(),
          const HeaderPhoto(),
          child,
        ],
      ),
    );
  }
}

class AuthBackgroundBigScreen extends StatelessWidget {
  final Widget child;

  const AuthBackgroundBigScreen({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const PurpleBigBox(),
          child,
        ],
      ),
    );
  }
}

class AuthBackgroundMidleScreen extends StatelessWidget {
  final Widget child;

  const AuthBackgroundMidleScreen({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      // color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const PurpleBigBox(),
          child,
        ],
      ),
    );
  }
}

class PurpleBox extends StatelessWidget {
  const PurpleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: 90, left: 30),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: -40, left: -30),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: -50, right: -20),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), bottom: -50, left: 10),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), bottom: 120, right: 20),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)),
      gradient: LinearGradient(colors: [
        Color.fromRGBO(90, 70, 178, 1),
        Color.fromRGBO(230, 242, 255, 1),
      ]));
}

class PurpleBigBox extends StatelessWidget {
  const PurpleBigBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      //size.height * 0.3
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: 90, left: 30),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: -40, left: -30),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), top: -50, right: -20),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), bottom: -50, left: 10),
          // ignore: sort_child_properties_last
          Positioned(child: _Bubble(), bottom: 120, right: 20),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)),
      gradient: LinearGradient(colors: [
        Color.fromRGBO(90, 70, 178, 1),
        Color.fromRGBO(230, 242, 255, 1),
      ]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
