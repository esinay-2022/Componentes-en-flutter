
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Edgar',
      'last_name': 'Sinay',
      'email': 'edgar@gmail.com',
      'password': '123',
      'role': 'ADMIN',

    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imputs y Forms'),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          
          child: Form(
          key: myFormKey,
            child: Column(
              children:[
          
                 CustomInputField( labelText: 'Nombre' ,hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
                 CustomInputField( labelText: 'Apellido' ,hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField( labelText: 'Correo' ,hintText: 'Correo electronico', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField( labelText: 'Contraseña' ,hintText: 'Contraseña', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),
          
  DropdownButtonFormField<String>(
    value: 'Admin',
    items: const[
      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
      DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
      DropdownMenuItem(value: 'Client', child: Text('Client')),
      DropdownMenuItem(value: 'MiniClient', child: Text('MiniClient')),
      DropdownMenuItem(value: 'Mini', child: Text('Mini')),

    ],
     onChanged:(value){
      print(value);
      formValues['role'] = value ?? 'Admin';
     }
     ),

                 ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child:Text('Guardar'))
                     ),
                  onPressed: (){

                    FocusScope.of(context).requestFocus(FocusNode());
                    if (! myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                    
                  }
                 )
              ],
                   ),
          )
        ),
      ),
    );
  }
}
