import 'package:flutter/material.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});
  final title = "Easy way to manage your daily note ";
  final subtitle =
      "Keep your notes well and don't miss them by saving them in this app";
  final started = "Let's Started";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: PaddingItems.horizantalPadding,
          child: Column(
            children: [
              Image.asset("asset/Demo.png"),
              _TitleWidget(title: title),
              const Padding(padding: VerticalItems.verticalPadding),
              _SubtitleWidget(context),
              const Spacer(),
              _CreatButton(context)
            ],
          ),
        ));
  }

  ElevatedButton _CreatButton(BuildContext context) {
    return ElevatedButton(
        onPressed: (() {}),
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(started,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255))))));
  }

  // ignore: non_constant_identifier_names
  Text _SubtitleWidget(BuildContext context) {
    return Text(subtitle,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: const Color.fromARGB(255, 141, 140, 140),
            fontWeight: FontWeight.w500));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 40);
}

class VerticalItems {
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
