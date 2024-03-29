import 'package:flutter/material.dart';

Future<bool?> showConfirmDialog(BuildContext context, String message) {
  return showDialog(
    context: context, 
    builder: (ctx) => AlertDialog(
      title: const Text('Are you sure?'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop(false);
          }, 
          child: const Text(
            'No',
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop(true);
          }, 
          child: const Text(
            'Yes',
            style: TextStyle(color: Colors.red),
          )
        ),
      ],
    )
  );
} 

Future<void> showErrorDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: const Text('An Error Occurred'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(ctx).pop();
          },
          child: const Text('Okay'),
        ),
      ],
    )
  );
}
