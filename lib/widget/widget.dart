// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class ExClipOval extends StatelessWidget {
  final Widget icon;
  final String name;
  final Color? color;

  const ExClipOval({
    Key? key,
    required this.name,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Material(
            color: color, // Button color
            child: InkWell(
              splashColor:
                  const Color.fromARGB(255, 255, 255, 255), // Splash color
              onTap: () {},
              child: SizedBox(
                width: 56,
                height: 56,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon,
                  ],
                ),
              ),
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}

class ExSearchBart extends StatelessWidget {
  // final String value;
  // final Function(String value) onChanged;
  // final String? label;

  const ExSearchBart({
    Key? key,
    // required this.value,
    // required this.onChanged,
    // this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 28, right: 28),
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(42.0),
        ),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[400]!,
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Expanded(
            child: TextFormField(
              initialValue: null,
              decoration: const InputDecoration.collapsed(
                filled: true,
                fillColor: Colors.transparent,
                hintText: "Search",
                hoverColor: Colors.transparent,
              ),
              onFieldSubmitted: (value) {},
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.mic,
                color: Colors.blue,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final Color? color;
  final bool spaceBetween;

  const QButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.prefixIcon,
    this.sufixIcon,
    this.color,
    this.spaceBetween = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: 63.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? const Color.fromRGBO(0, 2, 255, 100),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(22.0),
            ),
          ),
        ),
        onPressed: () => onPressed(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              Icon(
                prefixIcon!,
                size: 24.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
            if (spaceBetween && prefixIcon != null) const Spacer(),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
            if (spaceBetween && sufixIcon != null) const Spacer(),
            if (sufixIcon != null) ...[
              Icon(
                sufixIcon!,
                size: 24.0,
              ),
              const SizedBox(
                width: 6.0,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
