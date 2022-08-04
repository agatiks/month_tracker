import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../design_values.dart';

class FieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const FieldWidget({Key? key, required this.hint, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
        BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(DesignValues.radius),
          boxShadow: [DesignValues.regularShadow],
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: DesignValues.paddingBig),
        child: TextField(
          decoration: InputDecoration(hintText: hint, border: InputBorder.none,),
          autofocus: true,
          controller: controller,
          style: DesignValues.bodyLato24(),
        ),
      ),
    );
  }
}