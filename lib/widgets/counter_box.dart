import 'package:flutter/material.dart';

class CounterBox extends StatelessWidget {
  final String title;
  final int value;
  final Function ()? plusonPressed ;
  final Function ()? onPressed ;

  const CounterBox({super.key, required this.title, required this.value,this.onPressed,this.plusonPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              value.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               
                 FloatingActionButton.small(
                  heroTag: "",
                    onPressed: onPressed,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Color(0xff8B8C9E),
                    child: Icon(Icons.remove),
                  ),
                

              
             
                 FloatingActionButton.small(
                  heroTag: "",
                    onPressed: plusonPressed,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Color(0xff8B8C9E),
                    child: Icon(Icons.add),
                  ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
