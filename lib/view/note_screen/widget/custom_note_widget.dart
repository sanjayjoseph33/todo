import 'package:flutter/material.dart';

class CustomNotesWidget extends StatelessWidget {
  const CustomNotesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[100],
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22
              ),
              ),
              Spacer(),
              IconButton(onPressed: () {},
               icon: Icon(Icons.edit),
              ),
              IconButton(onPressed: () {},
               icon: Icon(Icons.delete),
               ),
            ],
          ),
          Text("Description",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Date",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontSize: 16),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.share),
          ),
            ],
          )
        ],
      ),
    );
  }
}