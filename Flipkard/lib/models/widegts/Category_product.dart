
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../products.dart';

class AllItem extends StatelessWidget {
  final Products product;

  AllItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Category: ${product.category ?? 'N/A'}',maxLines: 1, style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const Text('No images available', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

}
class AllData extends StatefulWidget {
  const AllData({Key? Key }) :super(key: Key);

  @override
  State<AllData> createState() => allDataState();
}
class allDataState extends State<AllData> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return AllItem(product: product );
        },
      ),
    );

  }

  void getData() async {
    final response = await dio.get('https://dummyjson.com/products/category/smartphones');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData1() async {
    final response = await dio.get('https://dummyjson.com/products/category/laptops');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData3() async {
    final response = await dio.get('https://dummyjson.com/products/category/fragrances');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData4() async {
    final response = await dio.get('https://dummyjson.com/products/category/skincare');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData5() async {
    final response = await dio.get('https://dummyjson.com/products/category/groceries');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData6() async {
    final response = await dio.get('https://dummyjson.com/products/category/home-decoration');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData7() async {
    final response = await dio.get('https://dummyjson.com/products/category/furniture');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData8() async {
    final response = await dio.get('https://dummyjson.com/products/category/tops');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData9() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-dresses');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData10() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-shoes');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData11() async {
    final response = await dio.get('https://dummyjson.com/products/category/mens-shirts');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData12() async {
    final response = await dio.get('https://dummyjson.com/products/category/mens-shoes');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData13() async {
    final response = await dio.get('https://dummyjson.com/products/category/mens-watches');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData14() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-watches');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData15() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-bags');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData16() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-jewellery');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData17() async {
    final response = await dio.get('https://dummyjson.com/products/category/sunglasses');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void getData18() async {
    final response = await dio.get('https://dummyjson.com/products/category/lighting');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    getData();
    getData1();
    getData3();
    getData4();
    getData5();
    getData7();
    getData8();
    getData9();
    getData10();
    getData11();
    getData12();
    getData13();
    getData14();
    getData15();
    getData16();
    getData17();
    getData18();
  }

}




class GroceryItem extends StatelessWidget {
  final Products product;

  GroceryItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Id: ${product.id ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const CircularProgressIndicator(color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
class Grocery extends StatefulWidget {
  const Grocery({Key? Key }) :super(key: Key);

  @override
  State<Grocery> createState() => groceryState();
}
class groceryState extends State<Grocery> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return GroceryItem(product: product );
        },
      ),
    );
  }

  void groceries() async {
    final response = await dio.get('https://dummyjson.com/products/category/groceries');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void skincare() async {
    final response = await dio.get('https://dummyjson.com/products/category/skincare');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    skincare();
    groceries();


  }

}




class LaptopItem extends StatelessWidget {
  final Products product;

  LaptopItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Id: ${product.id ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const Text('No images available', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
class Laptop extends StatefulWidget {
  const Laptop({Key? Key }) :super(key: Key);

  @override
  State<Laptop> createState() => laptopState();
}
class laptopState extends State<Laptop> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return LaptopItem(product: product );
        },
      ),
    );
  }

  void getData() async {
    final response = await dio.get('https://dummyjson.com/products/category/laptops');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    getData();
  }

}




class PhoneItem extends StatelessWidget {
  final Products product;

  PhoneItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Id: ${product.id ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const Text('No images available', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
class Phone extends StatefulWidget {
  const Phone({Key? Key }) :super(key: Key);

  @override
  State<Phone> createState() => phoneState();
}
class phoneState extends State<Phone> {
  final dio = Dio(BaseOptions(connectTimeout: Duration(seconds: 10)));

  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return PhoneItem(product: product );
        },
      ),
    );
  }

  void getData() async {
    final response = await dio.get('https://dummyjson.com/products/category/smartphones');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    getData();
  }

}





class FashionItem extends StatelessWidget {
  final Products product;

  FashionItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Id: ${product.id ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const Text('No images available', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
class Fashion extends StatefulWidget {
  const Fashion({Key? Key }) :super(key: Key);

  @override
  State<Fashion> createState() => fashionState();
}
class fashionState extends State<Fashion> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return FashionItem(product: product );
        },
      ),
    );
  }

  void womensdresses() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-dresses');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void womensShoes() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-shoes');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void mensshirts() async {
    final response = await dio.get('https://dummyjson.com/products/category/mens-shirts');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void sunglasses() async {
    final response = await dio.get('https://dummyjson.com/products/category/sunglasses');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void womensjewellery() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-jewellery');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void womensbags() async {
    final response = await dio.get('https://dummyjson.com/products/category/womens-bags');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void menswatches() async {
    final response = await dio.get('https://dummyjson.com/products/category/mens-watches');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    womensdresses();
    womensShoes();
    mensshirts();
    sunglasses();
    womensjewellery();
    womensbags();
    menswatches();
  }

}




class ApplienceItem extends StatelessWidget {
  final Products product;

  ApplienceItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text( product.title ?? 'No Title', style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, fontSize: 17,
        ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network( product.thumbnail!,fit: BoxFit.fitWidth,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Brand: ${product.brand ?? 'N/A'}',style: TextStyle(fontSize: 16)),
                    Text('Price: \$${product.price?.toStringAsFixed(0) ?? 'N/A'}', style: const TextStyle(fontSize: 16)),
                    Text('Discount: ${product.discountPercentage?.toStringAsFixed(2) ?? 'N/A'}%', style: const TextStyle(fontSize: 16)),

                  ],),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Stock: ${product.stock ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),
                    Text('Rating: ${product.rating?.toStringAsFixed(2) ?? 'N/A'}', style: TextStyle(fontSize: 16,color: Colors.green)),
                    Text('Id: ${product.id ?? 'N/A'}', style: const TextStyle(fontSize: 16, color: Colors.red)),

                  ],),
              ],),
            product.images != null?
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scroll
                itemCount: product.images!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      product.images![index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
                : const Text('No images available', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
class Applience extends StatefulWidget {
  const Applience({Key? Key }) :super(key: Key);

  @override
  State<Applience> createState() => applienceState();
}
class applienceState extends State<Applience> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.blueAccent,
      height:100,
      child: ListView.builder(
        itemCount: Items.length,
        itemBuilder: (context, index) {
          final product = Items[index];
          return ApplienceItem(product: product );
        },
      ),
    );
  }

  void furniture() async {
    final response = await dio.get('https://dummyjson.com/products/category/furniture');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void homedecoration() async {
    final response = await dio.get('https://dummyjson.com/products/category/home-decoration');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void lighting() async {
    final response = await dio.get('https://dummyjson.com/products/category/lightings');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void automotive() async {
    final response = await dio.get('https://dummyjson.com/products/category/automotive');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }

  void motorcycle() async {
    final response = await dio.get('https://dummyjson.com/products/category/motorcycle');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    furniture();
    homedecoration();
    lighting();
    automotive();
    motorcycle();

  }

}




class Left extends StatelessWidget {
  final Products product;

  Left({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      elevation: 2,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(

        subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network( product.thumbnail!,fit: BoxFit.fitHeight,),
          SizedBox(height:10),
          Text( product.title ?? 'No Title',style: const TextStyle( color: Colors.black,
            fontWeight: FontWeight.bold, fontSize: 15,),
            maxLines: 1,textAlign: TextAlign.center,
          ),

        ],
      ),


      ),
    );
  }
}
class AllCate extends StatefulWidget {
  const AllCate({Key? Key }) :super(key: Key);

  @override
  State<AllCate> createState() => allCateState();
}
class allCateState extends State<AllCate> {
  final dio = Dio();
  List<Products> Items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        title: const Text('All Categories',style: TextStyle(fontSize: 20)),
        actions: const [
          Icon(Icons.search,weight: 10,)
        ],
      ),
      body: Row(
        children: [
          const SizedBox(width: 10,),

          Container(
            height:765,
            width: 80,
            color: Colors.white38,
            child:  Container(

              child: ListView(

                  children: [
                    Row(
                      children: [
                      TextButton(onPressed: () {
                      },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/mobiles.png'))))
                    ],),

                    const Center(child: Text('Phone')),

                    Row(
                      children: [
                      TextButton(
                          onPressed: () { },
                          child: Container(
                            width: 55,
                              child: Image(image: AssetImage('assets/electronic.png'))))
                    ],),

                    const Center(child: Text('Laptop')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/Grocery.png'))))
                    ],),

                    const Center(child: Text('Grocery')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/AllCategory/home.png'))))
                    ],),

                    const Center(child: Text('Home')),

                    Row(
                      children: [
                      TextButton(
                          onPressed: () { },
                          child: Container(
                            width: 55,
                              child: Image(image: AssetImage('assets/fashion.png'))))
                    ],),

                    const Center(child: Text('Fashion')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/applience.png'))))
                    ],),

                    const Center(child: Text('Applience')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/AllCategory/Phone.png'))))
                    ],),

                    const Center(child: Text('iPhone')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/AllCategory/Laptop.png'))))
                    ],),

                    const Center(child: Text('MackBook')),

                    Row(
                      children: [
                      TextButton(onPressed: () { },
                          child: Container(
                              width: 55,
                              child: Image(image: AssetImage('assets/AllCategory/Gros.png')))),

                    ],),

                    const Center(child: Text('Phone')),

                    Row(
                      children: [
                        TextButton(onPressed: () { },
                            child: Container(
                                width: 55,
                                child: Image(image: AssetImage('assets/mobiles.png'))))
                      ],),

                    const Center(child: Text('Phone')),

                    Row(
                      children: [
                        TextButton(
                            onPressed: () { },
                            child: Container(
                                width: 55,
                                child: Image(image: AssetImage('assets/electronic.png'))))
                      ],),

                    const Center(child: Text('Laptop')),

                    Row(
                      children: [
                        TextButton(onPressed: () { },
                            child: Container(
                                width: 55,
                                child: Image(image: AssetImage('assets/Grocery.png'))))
                      ],),

                    const Center(child: Text('Grocery')),

                    Row(
                      children: [
                        TextButton(onPressed: () { },
                            child: Container(
                                width: 55,
                                child: Image(image: AssetImage('assets/AllCategory/home.png'))))
                      ],),

                    const Center(child: Text('Home')),


                  ],
              ),

            ),
          ),

          Spacer(),

          Container(
            height:765,
            width: 300,
            color: Colors.white,

            child:  ListView(
                children:  [
                  const Row(
                    children: [
                      SizedBox(width: 25,),
                      Text('Populer Store',style: TextStyle(fontSize: 18)),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                              color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/AllCategory/home.png'),
                              ),
                            ),
                            const Text('Home Items',textAlign: TextAlign.center,
                                style: TextStyle(fontSize:
                                15)),
                          ],
                        ),
                        

                        Spacer(),

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/AllCategory/Gros.png'),
                              ),
                            ),
                            const Text('Grocery',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        Spacer(),

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/AllCategory/Phone.png'),
                              ),
                            ),
                            const Text('Phone',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                  ]
                  ),

                  SizedBox(height: 35,),

                  Row(
                      children: [

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/applience.png'),
                              ),
                            ),
                            const Text('applience',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        Spacer(),

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/fashion.png'),
                              ),
                            ),
                            const Text('fashion',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        Spacer(),

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/AllCategory/Laptop.png'),
                              ),
                            ),
                            const Text('Laptop',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                  ]
                  ),

                  SizedBox(height: 35,),

                  Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/mobiles.png'),
                              ),
                            ),
                            const Text('mobiles',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),

                        SizedBox(width: 35,),

                        Column(
                          children: [
                            Container(
                              width: 80,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(90,),
                                  color: Colors.black12) ,
                              child: TextButton(
                                onPressed: () { },
                                child: Image.asset('assets/electronic.png'),
                              ),
                            ),
                            const Text('electronic',textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                  ]
                  ),

                  SizedBox(height: 50,),





                  const Row(
                    children: [
                      SizedBox(width: 25,),
                      Text('Offers',style: TextStyle(fontSize: 18)),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height:500,
                    width:50,
                    child: GridView.builder(
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                      scrollDirection: Axis.horizontal,
                      itemCount: Items.length,
                      itemBuilder: (context, index) {
                        final product = Items[index];
                        return Left(product: product );
                        },
             ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height:1000,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: Items.length,
                      itemBuilder: (context, index) {
                        final product = Items[index];
                        return FashionItem(product: product );
                      },
                    ),
                  ),
                ]
            ),
          ),

          Spacer(),



        ],
      ),
    );



  }

  void getData() async {
    final response = await dio.get('https://dummyjson.com/products');
    print(response.data['products']);
    for(var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {

    });
  }
  @override

  void initState() {
    super.initState();
    getData();
  }

}




class SearchPage extends StatefulWidget {
  const SearchPage({Key? Key}) : super(key: Key);

  @override
  State<SearchPage> createState() => SearchPageState();
}
class SearchPageState extends State<SearchPage> {
  final dio = Dio();
  List<Products> Items = [];
  List<Products> ItemsMain = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      child:ListView(
        children: [
          Container(
            height: 80,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (keyword) {
                  if(keyword.isNotEmpty){
                    Items.clear();
                    Items.addAll(ItemsMain.where((element) => element.title!.toLowerCase().contains(keyword)));
                    setState(() {

                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // enabledBorder: InputBorder.none,
                  // disabledBorder: InputBorder.none,
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

                  ),
                ),
              ),
            ) ,
          ),

          Container(
            color: Colors.white,
            height: 750,
            child: ListView.builder(
              itemCount: Items.length,
              itemBuilder: (context, index) {
                final product = Items[index];
                return AllItem(product: product);
              },
            ),
          ),
        ],
      ) ,
    );

  }

  void Search() async {
    final response =
    await dio.get('https://dummyjson.com/products');
    print(response.data['products']);
    for (var json in response.data['products']) {
      Products product = Products.fromJson(json);
      Items.add(product);
    }
    ItemsMain.addAll(Items);
    print('PROS LENGTH : ' + Items.length.toString());

    setState(() {});
  }



  @override
  void initState() {
    super.initState();
    Search();

  }
}




class Terms_Conditions extends StatefulWidget {
  const Terms_Conditions({Key? Key }) :super(key: Key);

  @override
  State<Terms_Conditions> createState() => Terms_ConditionsState();
}
class Terms_ConditionsState extends State<Terms_Conditions> {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: const [
            Text('Terms and Conditions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('''
Welcome to [Your E-commerce App]! Before you begin using our services, please take a moment to carefully read and understand the following Terms and Conditions. By accessing or using our app, you agree to be bound by these terms. If you do not agree with any part of these terms, please do not use our app.

1. Acceptance of Terms:
By using [Your E-commerce App], you agree to comply with and be bound by these Terms and Conditions. These terms may be updated by us from time to time without notice. It is your responsibility to review these terms periodically for changes.

2. Account Registration:
To use certain features of the app, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account.

3. Privacy Policy:
Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and disclose information about you.

4. Product Listings and Descriptions:
We strive to provide accurate and up-to-date information about our products. However, we do not warrant the accuracy, completeness, or reliability of any product descriptions or other content on the app.

5. Ordering and Payment:
When you place an order through our app, you agree to provide accurate and complete information. Payment details are processed securely, but we are not responsible for any unauthorized access or use of your payment information.

6. Shipping and Delivery:
Shipping and delivery times are estimates and may vary. We are not responsible for any delays or issues caused by third-party delivery services.

7. Returns and Refunds:
Please review our Returns and Refunds Policy for information on returning products and obtaining refunds.

8. Intellectual Property:
All content on the app, including text, graphics, logos, images, and software, is the property of [Your Company] and is protected by copyright and other intellectual property laws.

9. Limitation of Liability:
To the extent permitted by law, [Your Company] shall not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues.

10. Governing Law:
These terms are governed by and construed in accordance with the laws of [Your Jurisdiction]. Any disputes arising under or in connection with these terms shall be subject to the exclusive jurisdiction of the courts located in [Your Jurisdiction].

By using [Your E-commerce App], you acknowledge that you have read, understood, and agree to be bound by these Terms and Conditions. If you have any questions or concerns, please contact us at [Your Contact Information].

Thank you for choosing [Your E-commerce App]!

''',style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );


  }



}




class Add_To_card extends StatefulWidget {
  const Add_To_card({Key? Key }) :super(key: Key);

  @override
  State<Add_To_card> createState() => Add_To_cardState();
}
class Add_To_cardState extends State<Add_To_card> {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: const [
            Text('Terms and Conditions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            SizedBox(height: 20),

          ],
        ),
      ),
    );


  }



}






class Add_card extends StatefulWidget {
  const Add_card({Key? Key }) :super(key: Key);

  @override
  State<Add_card> createState() => Add_cardState();
}
class Add_cardState extends State<Add_card> {

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Container(
          width: 300,
          height: 700,
          color: Colors.blueGrey,
          child: Image(image: AssetImage('assets/google.png')),
        ),

    );
  }

}



