import 'package:flutter/material.dart';

class UixFileUpload extends StatelessWidget {
  const UixFileUpload({
    super.key,
    required this.fileName,
    required this.fileSize,
    this.progress,
    this.error,
  });

  final String fileName;
  final String fileSize;
  final double? progress;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.description_outlined),
        title: Text(fileName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(fileSize),
            if (progress != null) ...[
              const SizedBox(height: 8),
              LinearProgressIndicator(value: progress),
            ],
            if (error != null) ...[
              const SizedBox(height: 8),
              Text(error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
            ],
          ],
        ),
        trailing: error == null
            ? const Icon(Icons.check_circle_outline, color: Colors.green)
            : Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error),
      ),
    );
  }
}
