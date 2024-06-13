import 'package:flutter/material.dart';

class AddButton extends StatefulWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  int up = 0;

  void increment() {
    setState(() {
      if (up >= 0 && up < 10) {
        up++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (up > 0) {
        up--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
              onPressed: () {
                increment();
              },
              style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Color.fromARGB(255, 158, 67, 10)),
              child: const Icon(Icons.add, color: Colors.white)),
          SizedBox(
            width: 10,
          ),
          Text('$up'),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {
                decrement();
              },
              style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: Color.fromARGB(255, 158, 67, 10)),
              child: Icon(
                Icons.remove,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
