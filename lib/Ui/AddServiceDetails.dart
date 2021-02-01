import 'package:flutter/material.dart';

import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/TF.dart';

import '../Buttons.dart';

class AddServiceDetails extends StatefulWidget {
  @override
  _AddServiceDetailsState createState() => _AddServiceDetailsState();
}

class _AddServiceDetailsState extends State<AddServiceDetails> {
  final TextEditingController _servicenamecontroller =
      new TextEditingController();
  final TextEditingController _serviceregcontroller =
      new TextEditingController();

  final TextEditingController _servicecostcontroller =
      new TextEditingController();
  final TextEditingController _servicetimecontroller =
      new TextEditingController();
  bool cofee = false;
  bool Tea = false;
  bool Wifi = false;
  bool Kids = false;
  bool Waiting = false;

  String gender = 'M';
  String language = 'english';

  int radioValue = 0;
  int radioValue2 = 0;

  void GenderRadio(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          gender = "M";
          break;

        case 1:
          gender = "F";
          break;
      }
    });
  }

  void languageRadio(int value) {
    setState(() {
      radioValue2 = value;
      switch (radioValue2) {
        case 0:
          gender = "english";
          break;

        case 1:
          gender = "arabic";
          break;
      }
    });
  }

  var _mainCategories = [
    'Beauty',
    'Health',
    'Others',
  ];

  var _subcategories = [
    "Hair Dresssing Services",
    "Cosmetology",
    "Body Care",
    "SPA Procedures",
    "Nail Services",
    "Tatoos and piercings",
    "Tanning Services"
  ];

  var healthsubcategory = [
    "Massage",
    "Sports Training",
    "Private Doctor",
    "Diagnosis / Examination",
  ];

  var otherssubcategory = [
    "Consultations",
  ];

  String _mainCategory = "Beauty";
  String _subCategory = "Hair Dresssing Services";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header_pink(
              Back: "images/back.png",
              text: "Add Services",
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                // for scroll view

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey
                                          .shade300, //                   <--- border color
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.miscellaneous_services_rounded,
                                          color: Colors.grey[600],
                                          //size: 1.0,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text("Main Category"),
                                        Spacer(),
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                              isDense:
                                                  true, // Reduces the dropdowns height by +/- 50%
                                              icon: Icon(
                                                  Icons.keyboard_arrow_down),
                                              value: _mainCategory,
                                              items:
                                                  _mainCategories.map((item) {
                                                return DropdownMenuItem(
                                                  value: item,
                                                  child: Text(item),
                                                );
                                              }).toList(),
                                              onChanged: (selectedItem) => {
                                                    if (selectedItem ==
                                                        "Beauty")
                                                      {
                                                        setState(
                                                          () => _mainCategory =
                                                              selectedItem,
                                                        ),
                                                        setState(() => {
                                                              _mainCategory =
                                                                  selectedItem,
                                                              _subCategory =
                                                                  "Hair Dresssing Services",
                                                              _subcategories = [
                                                                "Hair Dresssing Services",
                                                                "Cosmetology",
                                                                "Body Care",
                                                                "SPA Procedures",
                                                                "Nail Services",
                                                                "Tatoos and piercings",
                                                                "Tanning Services"
                                                              ]
                                                            }),
                                                      }
                                                    else if (selectedItem ==
                                                        "Health")
                                                      {
                                                        setState(() => {
                                                              _mainCategory =
                                                                  selectedItem,
                                                              _subCategory =
                                                                  "Massage",
                                                              _subcategories = [
                                                                "Massage",
                                                                "Sports Training",
                                                                "Private Doctor",
                                                                "Diagnosis ",
                                                              ]
                                                            }),
                                                      }
                                                    else if (selectedItem ==
                                                        "Others")
                                                      {
                                                        setState(() => {
                                                              _mainCategory =
                                                                  selectedItem,
                                                              _subCategory =
                                                                  'Consulting',
                                                              _subcategories = [
                                                                "Consulting"
                                                              ]
                                                            }),
                                                      }
                                                  }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey
                                          .shade300, //                   <--- border color
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.subject_rounded,
                                          color: Colors.grey[600],
                                          //size: 1.0,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text("Sub Category"),
                                        Spacer(),
                                        DropdownButtonHideUnderline(
                                          child: DropdownButton(
                                            isDense:
                                                true, // Reduces the dropdowns height by +/- 50%
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            value: _subCategory,
                                            items: _subcategories.map((item) {
                                              return DropdownMenuItem(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: TextStyle(
                                                      fontSize: 12,
),
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (selectedItem) =>
                                                setState(
                                              () => _subCategory = selectedItem,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey
                                          .shade300, //                   <--- border color
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.masks_outlined,
                                          color: Colors.grey[600],
                                          //size: 1.0,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text("Service For : "),
                                        Spacer(),
                                        new Row(
                                          children: [
                                            new Radio<int>(
                                                activeColor:
                                                    Colors.purple.shade400,
                                                value: 0,
                                                groupValue: radioValue,
                                                onChanged: GenderRadio),
                                            new Text(
                                              "Male",
                                              style: new TextStyle(
                                                  color: Colors.black),
                                            ),
                                            new Radio<int>(
                                                activeColor:
                                                    Colors.purple.shade400,
                                                value: 1,
                                                groupValue: radioValue,
                                                onChanged: GenderRadio),
                                            new Text(
                                              "Female",
                                              style: new TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                TF(
                                  controller: _servicenamecontroller,
                                  hintText: 'Service Name',
                                  // isPassword: true,
                                  prefixIcon: Icons.design_services,
                                  suffixIcon:
                                      _servicenamecontroller.text.isNotEmpty
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                TF(
                                  controller: _serviceregcontroller,
                                  hintText: 'Service Registration',
                                  // isPassword: true,
                                  prefixIcon:
                                      Icons.format_list_numbered_rounded,
                                  suffixIcon:
                                      _serviceregcontroller.text.isNotEmpty
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                TF(
                                  controller: _servicecostcontroller,
                                  hintText: 'Service Cost',
                                  // isPassword: true,
                                  prefixIcon: Icons.money,
                                  suffixIcon:
                                      _servicecostcontroller.text.isNotEmpty
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                TF(
                                  controller: _servicetimecontroller,
                                  hintText: 'Service Duration ( Minutes)',
                                  // isPassword: true,
                                  prefixIcon: Icons.lock_clock,
                                  suffixIcon:
                                      _servicetimecontroller.text.isNotEmpty
                                          ? Icons.check_circle
                                          : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                                Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey
                                          .shade300, //                   <--- border color
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.g_translate_outlined,
                                          color: Colors.grey[600],
                                          //size: 1.0,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Language : "),
                                        Spacer(),
                                        new Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            new Radio<int>(
                                                activeColor:
                                                    Colors.purple.shade400,
                                                value: 0,
                                                groupValue: radioValue2,
                                                onChanged: languageRadio),
                                            new Text(
                                              "English",
                                              style: new TextStyle(
                                                  color: Colors.black),
                                            ),
                                            new Radio<int>(
                                                activeColor:
                                                    Colors.purple.shade400,
                                                value: 1,
                                                groupValue: radioValue2,
                                                onChanged: languageRadio),
                                            new Text(
                                              "Arabic",
                                              style: new TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                      color: Colors.grey
                                          .shade300, //                   <--- border color
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons
                                                  .set_meal_sharp,
                                              color: Colors.grey[600],
                                              //size: 1.0,
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text("Facilities Included : ",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Colors.grey[600])),
                                          ],
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Coffee'),
                                          secondary: const Icon(Icons.countertops_outlined),
                                          activeColor: Colors.pink[400],
                                          checkColor: Colors.white,
                                          selected: cofee,
                                          value: cofee,
                                          onChanged: (bool value) {
                                            setState(() {
                                              cofee = value;
                                            });
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Tea'),
                                          secondary: const Icon(Icons.countertops_outlined),
                                          activeColor: Colors.pink[400],
                                          checkColor: Colors.white,
                                          selected: Tea,
                                          value: Tea,
                                          onChanged: (bool value) {
                                            setState(() {
                                              Tea = value;
                                            });
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Wifi'),
                                          secondary: const Icon(Icons.wifi),
                                          activeColor: Colors.pink[400],
                                          checkColor: Colors.white,
                                          selected: Wifi,
                                          value: Wifi,
                                          onChanged: (bool value) {
                                            setState(() {
                                              Wifi = value;
                                            });
                                          },
                                        ),

                                                                                CheckboxListTile(
                                          title: const Text('Kids Place'),
                                          secondary: const Icon(Icons.king_bed_sharp),
                                          activeColor: Colors.pink[400],
                                          checkColor: Colors.white,
                                          selected: Kids,
                                          value: Kids,
                                          onChanged: (bool value) {
                                            setState(() {
                                              Kids = value;
                                            });
                                          },
                                        ),
                                        CheckboxListTile(
                                          title: const Text('Waiting Place'),
                                          secondary: const Icon(Icons.home_outlined),
                                          activeColor: Colors.pink[400],
                                          checkColor: Colors.white,
                                          selected: Waiting,
                                          value: Waiting,
                                          onChanged: (bool value) {
                                            setState(() {
                                              Waiting = value;
                                            });
                                          },
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      PinkButtons(
                                        Buttontext: "Continue",
                                        TextColor: Colors.white,
                                        onpress: () => {},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
