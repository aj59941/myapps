import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Category_product.dart';
import 'Signup_Login_Page.dart';
import 'notification.dart';

class Flipkart extends StatefulWidget {
  const Flipkart({Key? Key}) : super(key: Key);

  @override
  State<Flipkart> createState() => FlipkartState();
}
class FlipkartState extends State<Flipkart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        // leading: const Icon( Icons.menu, color: Colors.white, ),
        title: Container(
          height: 50.0,
          width: 100.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flipkart-plus_8d85f4.png'),
                fit: BoxFit.contain,
              )),
        ),
        actions:  [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));

            },
            icon:const Icon(
              Icons.notifications,
              color: Colors.white,
            ), ),

          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Add_card(),));
              },
              icon:const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ) )

        ],
      ),
      drawer: Drawer(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: 150,
              width: 300,
              color: Colors.blueAccent,

              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/flipkart-plus_8d85f4.png'),),
                  ]),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 670,
                  width: 290,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () { },
                        child: const Row(
                          children: [
                            Icon(Icons.settings,size: 30),
                            SizedBox(width: 15,),
                            Text('Settings',style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),

                      SizedBox(height: 15,),

                      TextButton(
                        onPressed: () { },
                        child: const Row(
                          children: [
                            Icon(Icons.person,size: 30),
                            SizedBox(width: 15,),
                            Text('Contact',style: TextStyle(fontWeight: FontWeight.bold)),

                          ],
                        ),
                      ),

                      SizedBox(height: 15,),

                      TextButton(
                        onPressed: () { },
                        child: const Row(
                          children: [
                            Icon(Icons.person_add,size: 30),
                            SizedBox(width: 15,),
                            Text('Invite Friends',style: TextStyle(fontWeight: FontWeight.bold)),

                          ],
                        ),
                      ),

                      SizedBox(height: 15,),



                       TextButton(
                         onPressed: () { },
                         child: const Row(
                          children: [
                            Icon(Icons.question_mark,size: 30),
                            SizedBox(width: 15,),
                            Text('FlipKard Feature',style: TextStyle(fontWeight: FontWeight.bold)),

                          ],
                      ),
                       ),

                      SizedBox(height: 15,),

                      TextButton(
                        onPressed: () async {
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          prefs.remove("islogin");
                        },
                        child: const Row(
                          children: [
                            Icon(Icons.logout, size: 30),
                            SizedBox(width: 15),
                            Text('FlipKard Feature', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),



                    ],
                  ),
                ),



              ],
            ),
          ],
        ),
      ),
      bottomSheet: const BottomSheetContainer(),
      body: ListView(
        children: [
          Column(
            children: [
              SearchBar(),
              const SizedBox(
                height: 5.0,
              ),

              const MenuStripe(),
              // SizedBox(
              //   height: 5.0,
              // ),
              const OfferSlider(),
              // SizedBox(
              //   height: 5.0,
              // ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Grocery(),
                            ));
                      },
                      child: const ItemsCard(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Laptop(),
                            ));
                      },
                      child: const ItemsCard(
                        imageUrl: 'assets/electronic.png',
                        offer: 'Min. 60% off',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Phone(),
                            ));
                      },
                      child: const ItemsCard(
                        imageUrl: 'assets/mobiles.png',
                        offer: 'Min. 30% off',
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Discounts for You',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: Colors.white),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.0,
                        width: 80.0,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AllData()),
                                );
                              },
                              child: const Text(
                                'View all',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                color: Colors.white,
                height: 350.0,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Applience(),
                                      ));
                                },
                                child: const SizedBox(
                                  width: 200,
                                  child: ItemsCard(
                                    imageUrl: 'assets/applience.png',
                                    offer: 'Min. 70% off',
                                  ),
                                )),
                          ),
                          Expanded(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Laptop(),
                                      ));
                                },
                                child: const SizedBox(
                                  width: 200,
                                  child: ItemsCard(
                                    imageUrl: 'assets/electronic.png',
                                    offer: 'Min. 70% off',
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Fashion(),
                                    ));
                              },
                              child: const SizedBox(
                                width: 200,
                                child: ItemsCard(
                                  imageUrl: 'assets/fashion.png',
                                  offer: 'Min. 60% off',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Grocery(),
                                      ));
                                },
                                child: const SizedBox(
                                  width: 200,
                                  child: ItemsCard(
                                    imageUrl: 'assets/Grocery.png',
                                    offer: 'Min. 20% off',
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}





class SearchBar extends StatefulWidget {
  const SearchBar({Key? Key}) : super(key: Key);

  @override
  State<SearchBar> createState() => SearchState();
}
class SearchState extends State<SearchBar> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (str) {

        },
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchPage()),
          );
        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Search for Products, Brands and New Products..',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: const Center(
                  child: Icon(
                    Icons.mic,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            )),
      ),
    );
  }

}




class MenuStripe extends StatelessWidget {
  const MenuStripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      decoration: const BoxDecoration(color: Colors.white),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllCate()),
                        );
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                )
              ],
            ),
          ),
          const MenuStripeIteam(),
          const MenuStripeIteam(
            imageUrl: 'mobiles',
            iteamLabel: 'Mobiles',
          ),
          const MenuStripeIteam(
              imageUrl: 'applience', iteamLabel: 'Appliences'),
          const MenuStripeIteam(
            imageUrl: 'electronic',
            iteamLabel: 'Electronics',
          ),
          const MenuStripeIteam(
            imageUrl: 'fashion',
            iteamLabel: 'Fashion',
          ),
          const MenuStripeIteam(
            imageUrl: 'Grocery',
            iteamLabel: 'Grocery',
          ),
        ],
      ),
    );
  }
}

class MenuStripeIteam extends StatelessWidget {
  final String? imageUrl;
  final String? iteamLabel;

  const MenuStripeIteam({Key? key, this.imageUrl, this.iteamLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 50.0,
          child: TextButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Fashion(),));
            },
            child: Image(
                image: AssetImage('assets/${imageUrl ?? 'topoffers'}.png'),
                width: 200,
                height: 200),
          ),
        ),
        Text(
          iteamLabel ?? 'Top Offers',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
        )
      ],
    );
  }
}

class OfferSlider extends StatelessWidget {
  const OfferSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.0,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.62,
        scrollDirection: Axis.horizontal,
        children: const [
          OfferSliderIteam(),
          OfferSliderIteam(imageUrl: 'https://cdn.pixabay.com/photo/2015/02/02/11/08/office-620817_640.jpg'),
          OfferSliderIteam(imageUrl: 'https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_640.jpg'),
          OfferSliderIteam(imageUrl: 'https://cdn.pixabay.com/photo/2017/01/22/12/07/imac-1999636_640.png'),
        ],
      ),
    );
  }
}

class OfferSliderIteam extends StatelessWidget {
  final String? imageUrl;
  final String? offerLabel;
  final String? offerPercentage;

  const OfferSliderIteam(
      {Key? key, this.imageUrl, this.offerLabel, this.offerPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(imageUrl ??
                        'https://images.unsplash.com/photo-1522198734915-76c764a8454d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
                        .image,
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offerLabel ??
                      'Computer Bestsellers \nLaptops, Printers, Monitors',
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 30.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                      child: Text(
                        offerPercentage ?? '30-75% OFF',
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                    color: Colors.yellow,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'No Cost EMI Durability Certified',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemsCard extends StatelessWidget {
  final String? imageUrl;
  final String? offer;

  const ItemsCard({Key? key, this.imageUrl, this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160.0,
        width: 95,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 100.0,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl ?? 'assets/Grocery.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 20.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      offer ?? 'Min. 50% off',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 13.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AllData(),));
            },
            child: const Icon(
              Icons.shop_rounded,
              color: Colors.blueAccent,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Applience(),));
            },
            child: const Icon(
              Icons.polymer,
              color: Colors.blueAccent,
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllCate(),
                        ));
                  },
                  child: const Icon(
                    Icons.grid_view,
                    color: Colors.white,
                  ),
                ),
              )),
          TextButton(
            onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) => Phone(),));
            },
            child: const Icon(
              Icons.video_call,
              color: Colors.blueAccent,
              size: 30,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage(),));
            },
            child: const Icon(
              Icons.account_circle_rounded,
              color: Colors.blueAccent,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
