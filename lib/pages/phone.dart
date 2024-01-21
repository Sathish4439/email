import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  String selectedcountry = 'India';
  List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Italy',
    'Japan',
    'China',
    'India',
    'Brazil',
    'Australia',
    'Mexico',
    'South Africa',
    'Russia',
    'Spain',
    'Argentina',
    'South Korea',
    'Nigeria',
    'Egypt',
    'Saudi Arabia',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Phone number:")],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Row(
                  children: [
                    Text("Default country code: "),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 300, // Set the width of the dropdown
                      decoration: BoxDecoration(border: Border.all()),
                      child: ListBody(
                        children: [
                          DropdownButton<String>(
                            isExpanded: true,
                            alignment: AlignmentDirectional.center,
                            value: selectedcountry,
                            underline: SizedBox(),
                            focusColor: Colors.white,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedcountry = newValue!;
                              });
                            },
                            items: countries
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 360,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
