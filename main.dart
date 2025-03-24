import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<bool> isHeartPressedList = List.generate(8, (index) => false);

  bool isGridView = false;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, String>> itemList = [
    {
      "image": "https://down-vn.img.susercontent.com/file/6c8ce68755430b006d955485379dda8f",
      "text": "Mô hình Dante Masamune 1/100 chính hãng nhà Moshow Toys",
      "price":"Giá: 1400k"
    },
    {
      "image": "https://th.bing.com/th/id/R.48943541bcd7e5ddc63c39e7f19acc9e?rik=m4DplnVgzTkbJw&riu=http%3a%2f%2fvcagundam.sg%2fcdn%2fshop%2ffiles%2fA0_803f9421-9d3a-49b2-9479-dc880b0a00c5.jpg%3fv%3d1727407116&ehk=s8FWyNTlGvl8%2flJ6J1%2b7N17pLu%2f11005Rl8bAeUFk%2bQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Lone Shadow 1/10 chính hãng nhà Hemoxian là kit lắp ráp với nhiếu hiệu ứng",
      "price":"Giá: 850k"
    },
    {
      "image": "https://th.bing.com/th/id/R.527cf65fedd83d58b8a9a4a9be9bc34d?rik=vAYB968HMGmjxg&riu=http%3a%2f%2fhobbyzoneuk.co.uk%2fcdn%2fshop%2ffiles%2fHemoxian_Tastier_01.jpg%3fv%3d1707220038&ehk=gaz2BScW4C%2br17yJrO%2fdqBVLfg6jzY5O2fwuo31YrPQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Tastỉe 1/10 chính hãng nhà Hemoxian là đối thủ của Lone Shadow",
      "price":"Giá: 850k"
    },
    {
      "image": "https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m2ghzxp6wvck1f",
      "text": "Mô hình Táo thiện xạ là kit chính hãng trong phim Robo trái cây",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.OAEErXfEpic49BjD-nHA1QHaHa?w=209&h=209&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Quýt kiếm sĩ là kit chính hãng trong phim Robo trái cây",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.xTVOTab8EvVPBR-y319ZJwHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Thơm giác đấu là kit chính hãng trong phim Robo trái cây",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.dfSda-ywn__r6DyPvXP82QHaHa?w=202&h=200&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Aobing là Ngao bính-Tam thái tử của Ngao Quảng- Đông Hải Long Vương",
      "price":"Giá: 1100k"
    },
  ];
  final List<Map<String, String>> itemGrid = [
    {
      "image": "https://down-vn.img.susercontent.com/file/6c8ce68755430b006d955485379dda8f",
      "text": "Mô hình Dante Masamune 1/100",
      "price":"Giá: 1400k"
    },
    {
      "image": "https://th.bing.com/th/id/R.48943541bcd7e5ddc63c39e7f19acc9e?rik=m4DplnVgzTkbJw&riu=http%3a%2f%2fvcagundam.sg%2fcdn%2fshop%2ffiles%2fA0_803f9421-9d3a-49b2-9479-dc880b0a00c5.jpg%3fv%3d1727407116&ehk=s8FWyNTlGvl8%2flJ6J1%2b7N17pLu%2f11005Rl8bAeUFk%2bQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Lone Shadow 1/10",
      "price":"Giá: 850k"
    },
    {
      "image": "https://th.bing.com/th/id/R.527cf65fedd83d58b8a9a4a9be9bc34d?rik=vAYB968HMGmjxg&riu=http%3a%2f%2fhobbyzoneuk.co.uk%2fcdn%2fshop%2ffiles%2fHemoxian_Tastier_01.jpg%3fv%3d1707220038&ehk=gaz2BScW4C%2br17yJrO%2fdqBVLfg6jzY5O2fwuo31YrPQ%3d&risl=&pid=ImgRaw&r=0",
      "text": "Mô hình Tastỉe 1/10",
      "price":"Giá: 850k"
    },
    {
      "image": "https://down-vn.img.susercontent.com/file/vn-11134207-7ras8-m2ghzxp6wvck1f",
      "text": "Mô hình Táo thiện xạ",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.OAEErXfEpic49BjD-nHA1QHaHa?w=209&h=209&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Quýt kiếm sĩ",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.xTVOTab8EvVPBR-y319ZJwHaHa?w=199&h=199&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Thơm giác đấu",
      "price":"Giá: 500k"
    },
    {
      "image": "https://th.bing.com/th/id/OIP.dfSda-ywn__r6DyPvXP82QHaHa?w=202&h=200&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "text": "Mô hình Aobing 1/100",
    "price":"Giá: 1100k"
    },
  ];
  final List<String> menuItems = [
    'Trang chủ',
    'Bandai',
    'Motor Nuclear',
    'CangDao',
    'Moshow',
    'SNAA'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Trued Hobby",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView.separated(
          itemCount: 7,
          itemBuilder: (context, index) {
            if (index == 0) {
              return ListTile(
                title: Text(
                  "MENU",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return ListTile(
                title: Text(menuItems[index - 1]),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "Đã chọn",
                        style: TextStyle(fontSize: 20),
                      ),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(10),
                    ),
                  );
                  Navigator.pop(context);
                },
              );
            }
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ),
      endDrawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 20),
          child: Column(
            children: [
              Text("Tìm kiếm", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Tìm kiêm tên sản phẩm',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Đã tìm kiếm",
                            style: TextStyle(fontSize: 20),
                          ),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(10),
                        ),
                      );
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: Image.network("https://www.saint-ism.com/wp-content/uploads/2015/11/rg_gundam_43.jpg")
            ),

              Row(

               mainAxisAlignment:  MainAxisAlignment.end,
               children: [

                  IconButton(
                    onPressed: () {
                      setState(() {
                        isGridView = !isGridView;
                      });
                    },
                    icon: Icon(isGridView ? Icons.list : Icons.grid_on),),
                  SizedBox(width: 15,),


                ],
              ),



            isGridView
                ? GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 cột
                crossAxisSpacing: 10, // Khoảng cách giữa các phần tử
                mainAxisSpacing: 10, // Khoảng cách giữa các phần tử
              ),
              itemCount: itemGrid.length,
              itemBuilder: (context, index) {
                double widthCard = MediaQuery.of(context).size.width / 2 - 20;
                double heightCard = widthCard * 2; // Chiều dài gấp đôi chiều rộng

                return Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(10),


                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child:
                        Image.network(
                          itemGrid[index]["image"]!,
                          height: widthCard,
                          width: widthCard,
                          fit: BoxFit.cover,


                        ),
                      ),
                      Positioned(
                        top: 3,
                        right: 3,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isHeartPressedList[index] ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              isHeartPressedList[index] = !isHeartPressedList[index];
                            });
                          },
                        ),
                      ),
                      Container(
                        height:30,
                        color: Colors.black.withOpacity(0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(itemList[index]["price"]!,
                              style: TextStyle(fontSize: 20,color: Colors.white),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                children: [IconButton(

                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          "Đã bấm vào giỏ hàng",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        margin: EdgeInsets.all(10),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.shopping_cart,color: Colors.white,),
                                ),


                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );

              },
            )


                : ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.network(
                            itemList[index]["image"]!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Text(
                                itemList[index]["text"]!,
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(itemList[index]["price"]!,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      children: [TextButton(
                                        child: Text("Mua ngay",style: TextStyle(fontSize: 20,color: Colors.cyan),),
                                        onPressed: () {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                "Đã bấm vào giỏ hàng",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              behavior: SnackBarBehavior.floating,
                                              margin: EdgeInsets.all(10),
                                            ),
                                          );
                                        },
                                      ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.favorite,
                                            color: isHeartPressedList[index] ? Colors.red : Colors.grey,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isHeartPressedList[index] = !isHeartPressedList[index];
                                            });
                                          },
                                        ),

                                      ],
                                    ),
                                  )


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
