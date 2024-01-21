import 'package:email/pages/components/FormattingOptionsRow.dart';
import 'package:email/pages/star.dart';
import 'package:flutter/material.dart';

class Signnature extends StatefulWidget {
  const Signnature({super.key});

  @override
  State<Signnature> createState() => _SignnatureState();
}

class _SignnatureState extends State<Signnature> {
  bool isvisibility1 = true;
  bool isvisibility2 = false;
  bool isclicked = false;
  String selectedOption1 = 'No signature';
  String selectedOption2 = 'No signature';

  List<String> options = ["No signature"];

  TextEditingController sign = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Signature:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "(appended at the end of all outgoing messages)",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Learn more",
                style: TextStyle(color: Colors.blue.shade900),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Visibility(
            visible: isvisibility1,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("No Signature",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  scrollable: true,
                                  title: const Text("Name New Signature"),
                                  content: Container(
                                    width: 400,
                                    height: 50,
                                    child: TextFormField(
                                      controller: sign,
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue.shade900,
                                                width: 2)),
                                        hintText: "Signature name",
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Text("Cancel")),
                                              )),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            // print(sign.text);
                                            if (sign.text.isNotEmpty) {
                                              setState(() {
                                                isvisibility1 = !isvisibility1;
                                                isvisibility2 = !isvisibility2;
                                                options.add(sign.text);
                                              });
                                            }
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  color: Colors.blue.shade300,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Text("Submit")),
                                              )),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              },
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 20,
                              ),
                              Text(
                                "Create New",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Visibility(
            visible: isvisibility2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 600,
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10))),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 180,
                                          width: 200,
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    border: Border.all(
                                                        color: Colors
                                                            .grey.shade400)),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(sign.text),
                                                      Row(
                                                        children: [
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(
                                                                  Icons.edit)),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: Icon(Icons
                                                                  .delete)),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400)),
                                    height: 120,
                                    width: 398,
                                    child: TextField(
                                      keyboardType: TextInputType.multiline,
                                      minLines: null,
                                      maxLines: null,
                                      expands: true,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400)),
                                    height: 78,
                                    width: 398,
                                    child: FormattingOptionsRow(),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            // print(sign.text);
                            if (sign.text.length > 0) {
                              setState(() {
                                isvisibility1 = !isvisibility1;
                                isvisibility2 = !isvisibility2;
                                options.add(sign.text);
                              });
                            }
                          },
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    scrollable: true,
                                    title: const Text("Name New Signature"),
                                    content: Container(
                                      width: 400,
                                      height: 50,
                                      child: TextFormField(
                                        controller: sign,
                                        decoration: InputDecoration(
                                          enabledBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.black)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue.shade900,
                                                  width: 2)),
                                          hintText: "Signature name",
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Center(
                                                      child: Text("Cancel")),
                                                )),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              sign.clear();
                                              Navigator.pop(context);
                                              //    print(sign.text);
                                              if (sign.text.isNotEmpty) {
                                                setState(() {
                                                  sign.clear();
                                                  isvisibility1 =
                                                      !isvisibility1;
                                                  isvisibility2 =
                                                      !isvisibility2;
                                                  options.add(sign.text);
                                                });
                                              }
                                            },
                                            child: Container(
                                                width: 80,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black),
                                                    color: Colors.blue.shade300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Center(
                                                      child: Text("Submit")),
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    Text(
                                      "Create New",
                                      style: TextStyle(color: Colors.blue),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Signature default",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "FOR NEW EMAILS USE",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Text("ON REPLY/FORWARD USE",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(border: Border.all()),
                              height: 40,
                              width: 200,
                              child: DropdownButton<String>(
                                value: selectedOption1,
                                isExpanded: true,
                                underline: SizedBox(),
                                focusColor: Colors.white,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedOption1 = newValue!;
                                  });
                                },
                                items: options.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(value),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                                width:
                                    16), // Spacer between the DropdownButtons
                            Container(
                              decoration: BoxDecoration(border: Border.all()),
                              height: 40,
                              width: 200,
                              child: DropdownButton<String>(
                                value: selectedOption2,
                                underline: SizedBox(),
                                isExpanded: true,
                                focusColor: Colors.white,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedOption2 = newValue!;
                                  });
                                },
                                items: options.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(value),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: isclicked,
                                onChanged: (value) {
                                  setState(() {
                                    isclicked = !isclicked;
                                  });
                                }),
                            Text(
                                "Insert signature before the quoted text in replies, and remove the '--' line that precedes it.")
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
      ],
    );
  }
}
/*Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.blue),
                                        child: Center(
                                          child: Text(sign.text),
                                        ),
                                      ),
                                    )
                                  ],
                                ), */