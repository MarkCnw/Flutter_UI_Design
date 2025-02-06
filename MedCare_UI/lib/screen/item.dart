import 'package:flutter/material.dart';
import 'package:myflutterject/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterject/screen/addform.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: databass.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: databass[index].job.color,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          databass[index].name,
                          style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        Text(
                            "อายุ${databass[index].age}ปี,อาชีพ${databass[index].job.title}",
                            style: GoogleFonts.kanit(
                                textStyle: const TextStyle(
                                    fontSize: 20, color: Colors.white)))
                      ],
                    ),
                    Image.asset(
                      databass[index].job.image,
                      width: 90,
                      height: 90,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              size: 40,
              color: Colors.blue,
            ),
            onPressed: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (ctx) => const Addform())
                );
            },
          ),
        )
      ],
    );
  }
}
