import 'package:flutter/material.dart';
import 'package:instadev/utils/colors.dat.dart';
import 'package:instadev/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passowordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passowordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2,),
              //imagem
              Image.asset(
                "imagens/login.png",
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64,),
              // text email
              TextFieldInput(
                  textEditingController: _emailController,
                  hintText: "Entre com o email",
                  textInputType: TextInputType.emailAddress
              ),
              const SizedBox(height: 24,),
              //password
              TextFieldInput(
                  textEditingController: _passowordController,
                  hintText: "Entre com a senha",
                  textInputType: TextInputType.text,
                  isPass: true,
              ),
              const SizedBox(height: 24,),
              //button login
              InkWell(
                onTap: (){},
                child: Container(
                  child: const Text("Login"),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(4),
                        ),
                      ),
                    color: blueColor,
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              Flexible(child: Container(), flex: 2,),
              // ir para cadastro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text('Você não tem conta?'),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      child: const Text('Cadastre-se', style: TextStyle(fontWeight: FontWeight.bold),),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
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
