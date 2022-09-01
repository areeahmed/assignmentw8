import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesignListtile extends StatefulWidget {
  DesignListtile({Key? key}) : super(key: key);

  @override
  State<DesignListtile> createState() => _DesignListtileState();
}

class _DesignListtileState extends State<DesignListtile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: ((context, index) {
            return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                ),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                width: 400,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.label,
                          size: 40,
                          color: Color.fromARGB(255, 98, 0, 255),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150.0),
                          child: Text(
                            'Title',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Switch.adaptive(
                            activeColor: Color.fromARGB(255, 98, 0, 255),
                            inactiveThumbColor:
                                Color.fromARGB(255, 155, 98, 248),
                            inactiveTrackColor:
                                Color.fromARGB(255, 201, 167, 255),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            })
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: const [
                        SizedBox(
                          width: 300,
                          height: 70,
                          child: AutoSizeText(
                            'This string will be automatically resized to fit in two lines.',
                            style: TextStyle(fontSize: 20),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Mon-Fri',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '06:00',
                          style: TextStyle(fontSize: 40),
                        ),
                        IconButton(
                            onPressed: () {
                              showAdaptiveActionSheet(
                                context: context,
                                title: const Text('Title'),
                                androidBorderRadius: 30,
                                actions: <BottomSheetAction>[
                                  BottomSheetAction(
                                      title: const Text('Edit'),
                                      onPressed: (context) {}),
                                  BottomSheetAction(
                                      title: const Text('Delete'),
                                      onPressed: (context) {}),
                                ],
                                cancelAction: CancelAction(
                                    title: const Text(
                                        'Cancel')), // onPressed parameter is optional by default will dismiss the ActionSheet
                              );
                            },
                            icon: Icon(Icons.arrow_circle_down))
                      ],
                    )
                  ],
                ));
          })),
    );
  }
}
