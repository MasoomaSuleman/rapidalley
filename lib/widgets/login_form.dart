import 'package:flutter/material.dart';
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  var _userEmail = '';
  var _password = '';
  var _userPassword = '';
  String l='Colors.red';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading:  
              Icon(Icons.keyboard_arrow_left, color: Colors.white,),
          
         ),
         body: SingleChildScrollView(
           child: Column(children: <Widget>[
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title:  Text("SIGN UP", style: TextStyle(color: Colors.amber,fontSize: 25),),
              subtitle:Container(color: Colors.amber,height: 2,),
              )
            ),
            Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 8.0,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: _formKey,
               
                  child: SingleChildScrollView(
                  
                    child: Column(
                    
                      children: <Widget>[
                      // if (!_isLogin) UserImagePicker(_pickedImage),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText: 'Email',
                        
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)
                            ),
                        
                          ),
                          autocorrect: false,
                          textCapitalization: TextCapitalization.none,
                          enableSuggestions: false,
                          validator: (value) {
                            if (value.isEmpty || !value.contains('@')) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                       
                          onSaved: (value) {
                            _userEmail = value;
                          },
                        ),
                        Divider(color: Colors.transparent,),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                      
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2.0)
                              ),
                      
                            ),
                            style: TextStyle(color: Colors.white),
                            autocorrect: true,
                            textCapitalization: TextCapitalization.words,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value.isEmpty || value.length < 4) {
                                return 'Please enter at least 4 characters';
                              }
                              return null;
                            },
                            obscureText: true,
                            onSaved: (value) {
                              _password = value;
                            },
                          ),
                        Divider(color: Colors.transparent,),
                        TextFormField(
                          
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0)
                            ),
                            
                          ),
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          validator: (value) {
                            if (value.isEmpty || value!=_password) {
                              return 'Incorret Password';
                            }
                            return null;
                          },
                       
                         
                          onSaved: (value) {
                            _userPassword = value;
                          },
                        ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                            Text("X Minimum of 5 characters",style: TextStyle(color: Colors.red)),
                            Text("X A capital letter",style: TextStyle(color: Colors.red)),
                            Text("X A lower case letter",style: TextStyle(color: Colors.red)),
                            Text("X A number",style: TextStyle(color: Colors.red)), 
                            Text("X Both Match",style: TextStyle(color: Colors.red)), 
                           ],
                         ),
                       ),
                          
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                      
                          child: RaisedButton(onPressed: (){
                           
                          },
                          splashColor: Colors.red,
                          color: Colors.amber,
                          child: Text('CONTINUE',style: TextStyle(color: Colors.black)),
                            ),
                        ),   
                      ],
                    ),
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