import 'package:flutter/material.dart';

Widget dialogDeleteThinks({required VoidCallback clickDelete, required VoidCallback clickCancel}) {
  return Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min, // This will ensure the dialog is not taking full height
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const Text("Tanlanganlarni o'chirish", style: TextStyle(fontSize: 18, color: Colors.black)),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: clickCancel,
              child: const Text("Bekor qilish", style: TextStyle(fontSize: 16, color: Colors.blueAccent)),
            ),
            const SizedBox(width: 16),
            GestureDetector(
              onTap: clickDelete,
              child: const Text("O'chirish", style: TextStyle(fontSize: 16, color: Colors.redAccent)),
            ),
          ],
        ),
      ],
    ),
  );
}