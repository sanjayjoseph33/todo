import 'package:flutter/material.dart';
import 'package:todo/view/note_screen/widget/custom_note_widget.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
          builder: (context) => StatefulBuilder(
            builder: (context, bottomSetState) => Container(
            decoration: BoxDecoration(
              color: Colors.grey[700],
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            color: Colors.grey[800],
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    label: Text("Title"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[350],
                    filled: true),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Description"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[350],
                    filled: true),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Date"),
                    border: OutlineInputBorder(),
                    fillColor: Colors.grey[350],
                    filled: true),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(border: Border.all(
                        width: 2, color: Colors.blue
                      ),
                    color: Colors.blue[100],),
                    width: 60,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100],),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Center(child: Text("Cancel")),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100],),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        child: Center(child: Text("Save")),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ),
          );
        },
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Note Pad"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 28
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) => CustomNotesWidget(),
        separatorBuilder: (context, index) => SizedBox(
          height: 20),
        itemCount: 2),
    );
  }
}