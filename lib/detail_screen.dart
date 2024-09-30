import 'package:flutter/material.dart';
import 'package:flutter_note/model/note.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatelessWidget {
  final Note note;

  const DetailScreen({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              note.title,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Flexible(
                    child: SizedBox(
                  width: 100,
                  child: Text('Create at'),
                )),
                Expanded(
                    child: Text(
                  DateFormat('dd MMM yyyy').format(note.createdAt),
                ))
              ],
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Flexible(
                    child: SizedBox(
                  width: 100,
                  child: Text('Tags'),
                )),
                Expanded(
                    child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    ...note.tags.map((tag) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6))),
                        child: Text(
                          tag,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ))),
                  ],
                ))
              ],
            ),
            const SizedBox(height: 16),
            Text(
              note.content,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      )),
    );
  }
}
