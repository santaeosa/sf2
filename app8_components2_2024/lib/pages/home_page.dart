import 'package:app8_components2_2024/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "type": "Sent",
      "description": "Sending Payment to Clients",
      "Price": 150,
      "icon": Icons.arrow_upward,
    },
    {
      "id": 2,
      "type": "Recive",
      "description": "Receiving salary from company",
      "Price": 750,
      "icon": Icons.arrow_downward,
    },
    {
      "id": 3,
      "type": "Loan",
      "description": "Loan for the car",
      "Price": 500,
      "icon": Icons.money,
    },
    {
      "id": 4,
      "type": "Sent",
      "description": "Sending Payment to Clients",
      "Price": 150,
      "icon": Icons.arrow_upward,
    },
    {
      "id": 5,
      "type": "Recive",
      "description": "Receiving salary from company",
      "Price": 750,
      "icon": Icons.arrow_upward,
    },
    {
      "id": 6,
      "type": "Loan",
      "description": "Loan for the car",
      "Price": 500,
     "icon": Icons.arrow_upward,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedf2f4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(0, 7),
                        blurRadius: 16.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.align_horizontal_left,
                            color: Color(0xff1b263b),
                            size: 18.0,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xff1b263b),
                            size: 18.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                        backgroundColor: Colors.amber,
                        radius: 48.0,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        "Hira Riaz",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0xff1b263b),
                        ),
                      ),
                      Text(
                        "UX/UI Designer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff1b263b),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Income"),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            width: 30,
                            child: VerticalDivider(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff1b263b),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Income"),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            width: 30,
                            child: VerticalDivider(
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff1b263b),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Income"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Color(0xff1b263b),
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Icon(
                          Icons.notification_add,
                          size: 20.0,
                          color: Color(0xff1b263b),
                        ),
                      ],
                    ),
                    Text(
                      "Sept 13, 2020",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                          color: Color(0xff1b263b)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemListWidget(
                      item: data[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
