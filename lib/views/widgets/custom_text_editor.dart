import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextEditorWidget extends StatefulWidget {
  const CustomTextEditorWidget({super.key});

  @override
  State<CustomTextEditorWidget> createState() => _CustomTextEditorWidgetState();
}

class _CustomTextEditorWidgetState extends State<CustomTextEditorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(
          //     right: 15.00,
          //     left: 15.00,
          //     top: 10,
          //   ),
          //   child: Row(
          //     children: [
          //       GestureDetector(
          //         onTap: () {},
          //         child: const Icon(
          //           Icons.format_bold,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //       ),
          //       const SizedBox(width: 15),
          //       GestureDetector(
          //         onTap: () {},
          //         child: const Icon(
          //           Icons.format_italic,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //       ),
          //       const SizedBox(width: 15),
          //       GestureDetector(
          //         onTap: () {},
          //         child: const Icon(
          //           Icons.format_underline,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              onChanged: (value) {},
              cursorColor: Colors.grey,
              maxLines: 3,
              maxLength: 140,
              cursorWidth: 1.5,
              decoration: const InputDecoration(
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
