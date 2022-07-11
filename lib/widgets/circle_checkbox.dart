import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';

class CircleCheckbox extends StatefulWidget {
  final Color color;
  final double size;
  final bool isChecked;
  const CircleCheckbox({Key? key,
    this.color = DesignValues.mainColor,
    this.isChecked = false,
    this.size = 30,
  }) : super(key: key);

  @override
  State<CircleCheckbox> createState() => _CircleCheckboxState();
}

class _CircleCheckboxState extends State<CircleCheckbox>{
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    _isChecked = widget.isChecked;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isChecked = !_isChecked;
          });
        },
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration (
            color: _isChecked? widget.color: Colors.black,
            borderRadius: BorderRadius.circular(widget.size / 2),
            boxShadow: [DesignValues.regularShadow],
          ),
        ),
      ),
    );
  }
}
