// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notipush1/Model/Model.dart';

class ListDisplay extends StatefulWidget {
  final MessageDisplay singleObject;
  final List<MessageDisplay> messages;

  ListDisplay({required this.messages, required this.singleObject});

  @override
  _ListDisplayState createState() => _ListDisplayState();
}

class _ListDisplayState extends State<ListDisplay> {
  void changeProp(MessageDisplay singleObject) {
    setState(() {
      // for (int i = 0; i < widget.messages.length; i++) {
      //   widget.messages[i].active = false;
      // }
      singleObject.active = !singleObject.active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 90,
      decoration: BoxDecoration(
          color: (widget.singleObject.active) ? Colors.pink[200] : Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
                blurRadius: 5,
                color: Colors.black26,
                offset: Offset(0, 5),
                spreadRadius: 2),
          ]),
      child: ListTile(
        onTap: () {
          changeProp(widget.singleObject);
        },
        isThreeLine: false,
        contentPadding: const EdgeInsets.all(7),
        leading: Container(
          height: 45,
          width: 50,
          margin: EdgeInsets.only(left: 5),
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color:
                (widget.singleObject.active) ? Colors.white : Colors.pink[200],
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 12),
                  spreadRadius: 0.25)
            ],
          ),
          child: Icon(
            widget.singleObject.icon,
            color:
                (widget.singleObject.active) ? Colors.pink[200] : Colors.white,
            size: 35,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 17,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Icon(Icons.schedule,
                      color: (widget.singleObject.active)
                          ? Colors.white
                          : Colors.black,
                      size: 17),
                  const SizedBox(width: 2),
                  Text('2 days ago',
                      style: TextStyle(
                          color: (widget.singleObject.active)
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                ],
              ),
            ),
            Text(widget.singleObject.title.toString(),
                style: TextStyle(
                    color: (widget.singleObject.active)
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5)),
            const SizedBox(height: 1),
            Text(widget.singleObject.messageBody.toString(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: (widget.singleObject.active)
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.5)),
            const SizedBox(height: 7),
          ],
        ),
      ),
    );
  }
}
