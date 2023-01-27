import 'package:flutter/material.dart';

Widget defaultFloating(
        {required final String hero,
        final bool upper = true,
        required final Function() function,
        required final IconData icon,
        final Color color = Colors.white}) =>
    FloatingActionButton(
      heroTag: upper ? hero.toUpperCase() : hero,
      backgroundColor: const Color.fromARGB(255, 108, 13, 163),
      onPressed: function,
      child: Icon(
        icon,
        color: color,
      ),
    );
