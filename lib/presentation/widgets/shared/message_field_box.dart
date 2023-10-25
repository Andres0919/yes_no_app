import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onSubmit;
  const MessageFieldBox({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );

    return TextFormField(
        controller: textController,
        focusNode: focusNode,
        onTapOutside: (event) => focusNode.unfocus(),
        onFieldSubmitted: (value) {
          print("Enviando mensaje: $value");
          onSubmit(value);
          focusNode.requestFocus();
          textController.clear();
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: outlineInputBorder,
          hintText: "Escribe un mensaje",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              final textValue = textController.text;
              onSubmit(textValue);
              print("Enviando mensaje: $textValue");
              textController.clear();
              focusNode.requestFocus();
            },
          ),
        ));
  }
}
