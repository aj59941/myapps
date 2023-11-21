import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../main.dart';
import 'Category_product.dart';
import 'Profile.dart';



class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? Key}) : super(key: Key);

  @override
  State<RegistrationPage> createState() => RegistrationPageState();
}
class RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7111FF),
      body: SafeArea(

        child: ListView(
            children: [
              Container(
                 height: 550,
                width: 300,
                color: Color(0xFF7111FF),
                child:  Image(image: AssetImage('assets/AllCategory/login7.jpg'),),
              ),

              const SizedBox(height: 50,),


                 Padding(
                   padding: const EdgeInsets.all(15),
                   child: Column(
                    children: [

                      Row(
                        children: [
                          Container(
                            width: 380,
                            height: 50,
                            decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.white),
                               ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                              },
                              child: const Center(child: Text( 'Log in',
                                style: TextStyle(color: Colors.white, fontSize: 22),)),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 40,),


                      Row(
                        children: [
                          Container(
                            width: 380,
                            height: 50,
                            decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.white),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()));
                              },
                              child: const Center(child: Text( 'Sign Up',
                                style: TextStyle(color: Colors.white, fontSize: 22),)),
                            ),
                          ),
                        ],
                      ),


                      const SizedBox(height: 5),

                    ],
                ),
                 ),

            ],
          ),
        ),

    );
  }
}





class SigninPage extends StatefulWidget {
  const SigninPage({Key? Key}) : super(key: Key);

  @override
  State<SigninPage> createState() => SigninPageState();
}
class SigninPageState extends State<SigninPage> {
  bool check = false;


  final TextEditingController usernameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final Dio dio = Dio();

  Future<void> signinUser() async {
    const url = 'http://192.168.1.40/ecommerce/route.php?route=registration';
    print(url);
    try { final response = await dio.post( url, data: FormData.fromMap({
      'username': usernameController.text,'contact': contactController.text,
      'email': emailController.text, 'password': passwordController.text, }),
    );
    if (response.statusCode == 200) {
      final responseData = response.data;
      if (responseData['success']) {
        print(response.data);

        if (check) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else {

          Fluttertoast.showToast(
            msg: 'check terms and conditions',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 20,
          );

        }

      } else {
        Fluttertoast.showToast(
          msg: responseData['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          fontSize: 20,
        );
      }

    } else {

      Fluttertoast.showToast(
        msg: 'An error occurred while making the request.',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 20,
      );
    }

    } catch (error) {

      print(error);
      Fluttertoast.showToast(
        msg: 'An error occurred: $error',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 20,
      );
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child:  ListView(
          padding: EdgeInsets.symmetric(horizontal:15,vertical: 50),
            children: [

               Container(
                  height: 750,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.white),
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Wrap(
                          spacing: 20,
                          children: [

                            const SizedBox(height: 10,),

                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' Create Account', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
                              ],
                            ),

                            const SizedBox(height: 20,),

                            TextField(
                              keyboardType: TextInputType.text,
                              controller: usernameController,
                              style: const TextStyle(color: Colors.purple,fontSize: 14),
                              decoration: const InputDecoration(
                                hintText: 'Full Name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                                suffixIcon: Icon(Icons.person,color: Colors.indigo),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextField(
                              keyboardType: TextInputType.number,
                              controller: contactController,
                              style: const TextStyle(color: Colors.purple,fontSize: 14),
                              decoration: const InputDecoration(
                                hintText: 'Phone Number',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                                suffixIcon: Icon(Icons.phone,color: Colors.indigo),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              style: const TextStyle(color: Colors.purple,fontSize: 14),
                              decoration: const InputDecoration(
                                hintText: 'User@gmail.com',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                                suffixIcon: Icon(Icons.email_outlined,color: Colors.indigo),
                              ),
                            ),

                            const SizedBox(height: 10),

                            TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              controller: passwordController,
                              style: const TextStyle(color: Colors.purple,fontSize: 14),
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                                suffixIcon: Icon(Icons.lock_outline,color: Colors.indigo),
                              ),

                            ),

                            const SizedBox(height: 10),

                            const TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              style:  TextStyle(color: Colors.purple,fontSize: 14),
                              decoration: InputDecoration(
                                hintText: 'Conform Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),),
                                suffixIcon: Icon(Icons.lock_open_outlined,color: Colors.indigo),
                              ),
                            ),

                            SizedBox(height: 40),

                            Row(
                              children: [
                                Checkbox(
                                  value: check,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check = value ?? false;
                                    });
                                  },
                                ),
                                const Text('agree  with',
                                  style: TextStyle(fontSize: 16), ),

                                TextButton(onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Terms_Conditions(),));
                                }, child: const Text('Terms & Conditions'),),
                              ], ),

                            SizedBox(height: 5),

                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: signinUser,


                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue[800],
                                      fixedSize: const Size(50, 60),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)),
                                      elevation: 50,
                                    ),
                                    child: const Text( 'Create Account', style: TextStyle(color: Colors.white, fontSize: 19),),),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                    },
                                    child: Image(image: AssetImage('assets/google.png'),width: 60,)
                                ),
                                SizedBox(width: 40,),
                                TextButton(
                                    onPressed: () {
                                    },
                                    child: Image(image: AssetImage('assets/facebook.png'),width: 95,)
                                ),
                              ],
                            ),




                          ],
                        ),
                      ),

                      Spacer(),

                      Container(
                        height: 70,
                        width: 380,
                        color: Colors.black12,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text( 'I have account?', style: TextStyle( fontSize: 19, ), ),
                              const SizedBox(width: 10,),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                },
                                style: TextButton.styleFrom(
                                  iconColor: Colors.amber,
                                  textStyle: const TextStyle(fontSize: 19),
                                ),
                                child: const Text('Login'),
                              )
                            ],
                          ),
                        ),

                    ],
                  ),
                ),
            ],
          ),

      ),
    );
  }

}




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}
class LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Dio dio = Dio();

  Future<void> loginUser() async {
    const url = 'http://192.168.1.40/ecommerce/route.php?route=login';
    print(url);
    try {
      final response = await dio.post( url, data: FormData.fromMap({
        'email': emailController.text, 'password': passwordController.text, }),
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        if (responseData['success']) {
          print(response.data);
          // Obtain shared preferences.
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('islogin', true);
          Navigator.push( context,
            MaterialPageRoute(builder: (context) =>  HomeScreen()),);

        } else {
          Fluttertoast.showToast(
            msg: responseData['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            backgroundColor: Colors.grey,
            textColor: Colors.black,
            fontSize: 20,
          );
        }

      } else {

        Fluttertoast.showToast(
          msg: 'An error occurred while making the request.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.grey,
          textColor: Colors.black,
          fontSize: 20,
        );
      }

    } catch (error) {

      print(error);
      Fluttertoast.showToast(
        msg: 'An error occurred: $error',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.grey,
        textColor: Colors.black,
        fontSize: 20,
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(

        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 80),
          children: [


            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                },
                child: const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=1024x1024&w=is&k=20&c=tq1C4HoZraH5szwBZqUf7sGVp7EPO-VB8PVbAPjagqY='),

                ),
              ),
            ),

             Container(
                height: 550,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,),
                child: Column(
                children: [

                  SizedBox(height: 10,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(' Login Account', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
                    ],
                  ),
                  SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        TextField(
                          controller: emailController,
                          style: const TextStyle(color: Colors.purple,fontSize: 14),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'User@gmail.com',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),),
                              suffixIcon: Icon(Icons.person,color: Colors.indigo,)
                          ),
                        ),


                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.purple,fontSize: 14),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),),
                    suffixIcon: Icon(Icons.security,color: Colors.indigo,)),

                  ),
                    ],
                  ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () { },
                        child: const Text('Forgot password',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Column(
                    children: [
                      Container(
                        width: 330,
                        height: 55,
                        child: TextButton(
                            onPressed: loginUser,
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue[800],
                              fixedSize: const Size(50, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              elevation: 50,
                            ),
                            child: const
                            Text( 'Login in',
                              style: TextStyle(color: Colors.white, fontSize: 22),)                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () { },
                          child: Image(image: AssetImage('assets/google.png'),width: 60,)
                      ),
                      TextButton(
                          onPressed: () { },
                          child: Image(image: AssetImage('assets/facebook.png'),width: 95,)
                      ),
                    ],
                  ),

                  Container(
                    height: 65,
                    width: 420,
                    color: Colors.black12,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dont have an account?', style: TextStyle( fontSize: 19),),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()));

                        },
                            child: const Text('Sign in',style: TextStyle( fontSize: 19,
                                color: Colors.purple))),
                      ],
                    ),
                  ),


                ],
                ),
              ),
           SizedBox(height: 50),
          ],
        ),
      ),


    );
  }

}

















