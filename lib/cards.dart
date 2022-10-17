import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card({Key? key}) : super(key: key);
  List mobile = [
    {
      'name': 'mohammed rjoub',
      'image':
          'https://i2.wp.com/rollercoasteryears.com/wp-content/uploads/Thrive-During-Finals-.jpg?fit=1000%2C667&ssl=1',
      'id': '8952514',
    },
    {
      'name': 'sameer',
      'image': 'https://m.media-amazon.com/images/I/A1UTpJzoPBL._RI_.jpg',
      'id': '546548',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            width: double.infinity,
            height: 450,
            color: Colors.white70,
            child: ListView.builder(
              itemCount: mobile.length,
              itemBuilder: (context, i) {
                return Row(
                  children: [
                    Image.network(
                      "${mobile[i]['image']}",
                      width: 120,
                      height: 80,
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Text(
                            "id: ${mobile[i]['id']}",
                            textAlign: TextAlign.start,
                          ),
                          Text("${mobile[i]['name']}"),
                        ]),
                        SizedBox(
                          width: 150,
                        ),
                        Row(children: [Icon(Icons.add), Icon(Icons.remove)]),
                      ],
                    )
                  ],
                );
                // ListTile(
                //   leading: CircleAvatar(
                //     child: Icon(Icons.mail),
                //   ),
                //   // leading: Icon(
                //   //   Icons.contact_page_rounded,
                //   //   color: Colors.black,
                //   // ),
                //   title: Text("${mobile[i]['name']}"),
                //   subtitle: const Text("sfda"),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
