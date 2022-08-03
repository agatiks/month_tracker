import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';

class CircleCheckbox extends StatefulWidget {
  final Color color;
  final double size;
  final bool isChecked;
  final bool isEmpty;
  final GestureTapCallback? onTap;

  const CircleCheckbox({Key? key,
    this.color = DesignValues.mainColor,
    this.isChecked = false,
    this.isEmpty = false,
    this.size = 40,
    this.onTap
  }) : super(key: key);

  @override
  State<CircleCheckbox> createState() => _CircleCheckboxState();
}

class _CircleCheckboxState extends State<CircleCheckbox>{
  bool _isChecked = false;

  @override
  void initState() {
    _isChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isEmpty?
        Container(
          width: widget.size,
          height: widget.size,
        )
    : GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
            widget.onTap!();
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration (
          color: _isChecked? widget.color: Colors.white,
          borderRadius: BorderRadius.circular(widget.size / 2),
          boxShadow: [DesignValues.regularShadow],
        ),
      ),
    );
  }
}
