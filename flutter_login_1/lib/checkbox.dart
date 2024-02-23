import 'package:flutter/material.dart';


class CheckboxExample extends StatefulWidget {
  final ValueChanged<bool?> onCheckedChanged;
  const CheckboxExample({super.key, required this.onCheckedChanged});
  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          tristate: false,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value;
              widget.onCheckedChanged(value);
            });
          },
        ),
      ],
    );
  }
}
