import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:trainingcenter/components/container_level.dart';
import 'package:trainingcenter/components/question.dart';
import 'package:trainingcenter/screen/candidates_screen.dart';

class QuestionPages extends StatefulWidget {
  const QuestionPages({super.key});

  @override
  State<QuestionPages> createState() => _QuestionPagesState();
}

class _QuestionPagesState extends State<QuestionPages> {
  int values = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 235, 249),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              // ----------------- Container Level ----------------- //
              const ContainerLevel(
                heights: 0.155,
                topDecoration: 18,
                childs: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Level 1",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "* Menunjukan pertanyaan wajib dijawab",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ----------------- Question 1 ----------------- // 
              ContainerLevel(
                heights: 0.37,
                topDecoration: 36,
                childs: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const QuestionForms(
                        numbers: 1,
                        question: "Jujur adalah...",
                        point: 10,
                      ),
                      const SizedBox(height: 10),
                      // radio button
                      Row(
                        children: [
                          Radio(
                            value: values,
                            groupValue: 1,
                            onChanged: (value) {
                              setState(() => value = values);
                            },
                          ),
                          const Text("Senang Melihat Orang Lain"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: values,
                            groupValue: 1,
                            onChanged: (value) {
                              setState(() => value = values);
                            },
                          ),
                          const Text("lurus hati atau tidak berbohong"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: values,
                            groupValue: 1,
                            onChanged: (value) {},
                          ),
                          const Text("Senang menolong orang lain"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: values,
                            groupValue: 1,
                            onChanged: (value) {
                              setState(() => value = values);
                            },
                          ),
                          const Text("Menjaga barang titipan orang lain"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // ----------------- back and previous ----------------- //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text("Kembali", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CandidatesPages())),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    
                    child: const Text("Berikutnya", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
    
  }
}