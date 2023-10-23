import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
            // boxShadow: const [
            //   BoxShadow(
            //       color: Colors.black12, offset: Offset(0, 2), blurRadius: 2)
            // ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text("Hola cielo",
                style: TextStyle(fontSize: 20, color: Colors.red)),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
