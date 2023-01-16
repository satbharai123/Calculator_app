import 'package:flutter/material.dart';
import 'package:calculator1/components.dart';
import 'package:math_expressions/math_expressions.dart';
void main(){
  runApp(const MyApp());
}
var input1="";
var output1= "";
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            //onTap: onPress,
            child: Column(
              children: [
                const SizedBox(height: 100,),
                Text(input1.toString(),style: const TextStyle(fontSize: 25.0,color: Colors.white),),
                const SizedBox(height: 50,),
                Text(output1.toString(),style: const TextStyle(fontSize: 50.0,color: Colors.white),),
                const SizedBox(height: 70,),
                Row(
                  children: [
                    Button1(name: "AC",color: Colors.grey, onPress: (){
                    input1="";
                    output1="";
                    setState((){
                    });
                    }),
                    Button1(name: "+/-",color: Colors.grey, onPress: (){
                      input1+="+/-";
                      setState((){
                      });

                    }),
                    Button1(name: "%",color: Colors.grey, onPress: (){
                      input1+="%";
                      setState((){
                      });

                    }),
                    Button1(name: "/",color: Colors.orange, onPress: (){
                      input1+="/";
                      setState((){
                      });
                    })
                  ],
                ),
                Row(
                  children: [
                    Button1(name: "7",color: Colors.grey, onPress: (){
                      input1+="7";
                      setState((){
                      });
                    }),
                    Button1(name: "8",color: Colors.grey, onPress: (){
                      input1+="8";
                      setState((){
                      });
                    }),
                    Button1(name: "9",color: Colors.grey, onPress: (){
                      input1+="9";
                      setState((){
                      });
                    }),
                    Button1(name: "x",color: Colors.orange, onPress: (){
                      input1+="*";
                      setState((){
                      });
                    })
                  ],
                ),
                Row(
                  children: [
                    Button1(name: "4",color: Colors.grey, onPress: (){
                      input1+="4";
                      setState((){
                      });
                    }),
                    Button1(name: "5",color: Colors.grey, onPress: (){
                      input1+="5";
                      setState((){
                      });
                    }),
                    Button1(name: "6",color: Colors.grey, onPress: (){
                      input1+="6";
                      setState((){
                      });
                    }),
                    Button1(name: "-",color: Colors.orange, onPress: (){
                      input1+="-";
                      setState((){
                      });
                    })
                  ],
                ),
                Row(
                  children: [
                    Button1(name: "1",color: Colors.grey, onPress: (){
                      input1+="1";
                      setState((){
                      });
                    }),
                    Button1(name: "2",color: Colors.grey, onPress: (){
                      input1+="2";
                      setState((){
                      });
                    }),
                    Button1(name: "3",color: Colors.grey, onPress: (){
                      input1+="3";
                      setState((){
                      });
                    }),
                    Button1(name: "+",color: Colors.orange, onPress: (){
                      input1+="+";
                      setState((){
                      });
                    })
                  ],
                ),
                Row(
                  children: [
                    Button1(name: "0",color: Colors.grey, onPress: (){
                      input1+="0";
                      setState((){
                      });
                    }),
                    Button1(name: ".",color: Colors.grey, onPress: (){
                      input1+=".";
                      setState((){
                      });
                    }),
                    Button1(name: "DEL",color: Colors.grey, onPress: (){
                      input1="";
                      output1="";
                      setState((){
                      });
                    }),
                    Button1(name: "=",color: Colors.orange, onPress: (){
                    action();
                      setState((){
                      });
                    })
                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
void action(){
  Parser p = Parser();
  Expression expression = p.parse(input1);
  //ContextModel contextModel = ContextModel();
  double oval = expression.evaluate(EvaluationType.REAL,ContextModel());
  output1=oval.toString();
}
