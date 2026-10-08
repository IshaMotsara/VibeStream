import 'package:flutter/material.dart';
import 'package:spotify_clone/core/theme/app_pallete.dart';
import 'package:spotify_clone/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify_clone/features/auth/view/widgets/custom_field.dart';

class SignupPage extends StatefulWidget {
  

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final Formkey=GlobalKey<FormState>();
  
  @override

  void dispose(){
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              Text('Sign Up.',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              CustomField(
                hintText: 'Name',
                controller: nameController,
              ),
              CustomField(
                hintText: 'Email',
                controller: emailController,
              ),
              CustomField(
                hintText: 'Password',
                controller: passwordController,
                isObscureText: true,
                ),
                AuthGradientButton(),
          
                RichText(
                  text: TextSpan(
                    text:'Already have an account?',
                    style:Theme.of(context).textTheme.titleMedium,
                    children:[
                      TextSpan(
                        text:'Sign In',
                         style:TextStyle(
                          color:Pallete.gradient2,
                          fontWeight: FontWeight.bold,
                         )
                        
                        )
                    ]
                  ),
                  
                  
                  
                  
                  ),
            ]
          ),
        ),
      ),
    );
  }
}