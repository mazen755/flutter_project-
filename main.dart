import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Counter myCounter = Counter();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          elevation: 4,
          shadowColor: Colors.black54,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0x6398949D),
                    ),
                    child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 30,),
                  ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                  child: Text("Booking Detlails",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.5),)),
            ],
          ),
        ),
        body:ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              width: screenWidth,
              color: Color(0xFFC6C6CE),
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    height: 201,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.date_range_outlined,color: Colors.pinkAccent,size: 35,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Select Date",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: screenWidth,
                          height: 62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFC6C6CE),
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 3,
                            ),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
                            child: DateWidget()
                          ),
                        ),
                        SingleSelectCheckbox()
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 190,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: CounterWidget(),
                  ),
                  Container(
                    width: screenWidth,
                    height: 190,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.credit_card,color: Colors.pinkAccent,size: 35),
                            SizedBox(width: 10,),
                            Text("Price Summary",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))
                          ],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Base price",style: TextStyle(fontSize: 17)),
                            Text("\$5,000",style: TextStyle(fontSize: 15))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Service fee",style: TextStyle(fontSize: 17)),
                            Text("\$500",style: TextStyle(fontSize: 15)),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          color: Colors.grey,
                          height: 1,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total",style: TextStyle(fontSize: 20)),
                            Text("\$5,500",style: TextStyle(fontSize: 20,color: Colors.pinkAccent,fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),],
                        color: Color(0xE5FF83C7),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Payment Method",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500)),
                        SizedBox(height: 10,),
                        Container(
                          width: screenWidth,
                          height: 65,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.credit_card,size: 35,color: Colors.blue,),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("....4242"),
                                  Text("Expires 12/25")
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        TextButton(onPressed: (){},
                            child: Text("+ Add Payment Method",style: TextStyle(color: Colors.pinkAccent,fontSize: 18),)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: screenWidth,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color(0xE5FF005F),Color(0xE5BE04A6)]),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(vertical: 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                        child: Text("Confirm Booking",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 110,
          child: BottomNavigationBar(
            iconSize: 35,
              items:[
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined),label: "Dashboard"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Profile"),
          ]),
        ),
      ),
    );
  }
}


class Counter {
  int count = 150;
  int maxGuests=300;
  void increment() {
    if(count<maxGuests)
    count+=10;
  }
  void decrement(){
    if(count>0){
      count-=10;
    }
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Icon(Icons.people_alt_outlined,color: Colors.pinkAccent,size: 35),
            SizedBox(width: 10,),
            Text("Number of Guests",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500))
          ],
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFC6C6CE),
              child: TextButton(onPressed: (){setState(() {myCounter.decrement();});},child: Text("-",style: TextStyle(fontSize: 30,color: Colors.purple,fontWeight: FontWeight.w500)),)
            ),
            Column(
              children: [
                Text("${myCounter.count}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500)),
                Text("guests",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400))
              ],
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFFC6C6CE),
              child: TextButton(onPressed: (){setState(() {myCounter.increment();});}, child: Text("+",style: TextStyle(fontSize: 30,color: Colors.purple,fontWeight: FontWeight.w500))),
            )
          ],
        )
      ],
    );
  }
}

class DateWidget extends StatefulWidget {
  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class myDateState {
  bool date=false;
}

class _DateWidgetState extends State<DateWidget> {
  TextEditingController dateController = TextEditingController();
  myDateState myDate = myDateState();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    TextField(
      controller: dateController,
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime(DateTime.now().year + 5),
        );

        if (pickedDate != null) {
          myDate.date=true;
          dateController.text =
          "${pickedDate.year}/${pickedDate.month}/${pickedDate.day}";
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: "Select Date",
        suffixIcon: Icon(Icons.calendar_today),
      ),
    )
      ],
    );
  }
}

class SingleSelectCheckbox extends StatefulWidget {
  const SingleSelectCheckbox({super.key});
  @override
  State<SingleSelectCheckbox> createState() => _SingleSelectCheckboxState();
}

class MyCheckboxState {
  bool option1 = false;
  bool option2 = false;
}

class _SingleSelectCheckboxState extends State<SingleSelectCheckbox> {
  MyCheckboxState myCheckbox = MyCheckboxState();
  void selectOption1() {
    setState(() {
      myCheckbox.option1 = true;
      myCheckbox.option2 = false;
    });
  }

  void selectOption2() {
    setState(() {
      myCheckbox.option1 = false;
      myCheckbox.option2 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: myCheckbox.option1,
          onChanged: (val) {
            selectOption1();
          },
        ),
        Text("1-5 PM"),
        SizedBox(width: 30),
        Checkbox(
          value: myCheckbox.option2,
          onChanged: (val) {
            selectOption2();
          },
        ),
        Text("7-11 PM"),
      ],
    );
  }
}
