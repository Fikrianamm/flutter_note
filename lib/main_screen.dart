import 'package:flutter/material.dart';
import 'package:flutter_note/model/note.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          children: noteList.map((note) => CardNote(note: note)).toList(),
        ),
      ),
    );
  }
}

class CardNote extends StatelessWidget {
  final Note note;

  const CardNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      onTap: () {},
      child: Card(
        color: const Color.fromARGB(255, 31, 31, 31),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat('dd MMM').format(note.createdAt),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              Text(
                note.title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: double.infinity,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    const int maxTagsToShow = 2;

                    List<String> displayedTags =
                        note.tags.take(maxTagsToShow).toList();

                    int remainingTags = note.tags.length - maxTagsToShow;

                    return Wrap(
                      spacing: 8.0,
                      children: [
                        ...displayedTags.map((tag) => Container(
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
                        if (remainingTags > 0)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6))),
                            child: Text(
                              '+$remainingTags',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 4),
              Text(note.content,
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
      ),
    );
  }
}
