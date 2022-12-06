// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_app/screens/welcom_view.dart';
// ignore: prefer_const_literals_to_create_immutables
class LoginPage extends StatefulWidget{
const LoginPage({Key? key}):super(key: key);

@override
State<LoginPage> createState()=> _LoginPageState();
}
class _LoginPageState extends State<LoginPage>{
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.grey[300],
    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fitness_center,
            size: 70,
            ),
            SizedBox(height: 40),
          //Inicio
          Text(
            'FitMax',
          style: GoogleFonts.bebasNeue(
            fontSize: 52,
          ),
          ),
          SizedBox(height: 10),
          Text(
            'Bem-vindo, hora dos treinos!',
          style: TextStyle(
            fontSize: 24,
          ),
          ),
          SizedBox(height: 50),
          //Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Telefone/Email',
                  ),
                ),
              ),
            ),
          ),
          //Senha
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Senha',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          //Botao Login
                                    GestureDetector(
                        onTap: () {
                          Navigator.push(
              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomView()));
                        },
                        child: Container(
                          width: 139,
                          height: 39,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Center(
                            child: Text(
                              "Logar",
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
          SizedBox(height: 25),
          //Botao registro
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Não possui registro?',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              Text(' Registre-se',style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
              ),
            ],
          ),
        ],
        ),
      ),
    ),
  );
}
}
