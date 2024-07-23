import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trainingcenter/components/candidates.dart';
import 'package:trainingcenter/components/profile.dart';
import 'package:trainingcenter/data/candidates_data.dart';
import 'package:trainingcenter/utils/constant.dart';

class CandidatesPages extends StatefulWidget {
  const CandidatesPages({super.key});

  @override
  State<CandidatesPages> createState() => _CandidatesPagesState();
}

class _CandidatesPagesState extends State<CandidatesPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_3.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/alametric_logo_white.png',
            width: 164,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.white, size: 30),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              
              Container(
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -64,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color.fromARGB(255, 191, 131, 255),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: MediaQuery.of(context).size.height * 0.07,
                        ),
                        child: Column(
                          children: [
                            const UserPoints(
                              userNames: "Susi Similikti",
                              userPoints: 950,
                            ),
                            const SizedBox(height: 56),

                            // -------------------------- Leveling -------------------------- //
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  AssetsImages.trophy,
                                  width: 120,
                                ),
                                const Text(
                                  "Rangking 3",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 24),

                                const Text(
                                  "Selamat Anda",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Diterima Kerja",
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),

                            
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 62),

              // -------------------------- Info -------------------------- //
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFD54B),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Info :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "  Anda akan segera dihubungi untuk kontrak & bertemu client.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                )
              ),
              const SizedBox(height: 64),

              // -------------------------- Leaderboards -------------------------- //

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Leaderboards - Final",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // -------------------------- Leaderboards -------------------------- //

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: candidatesDummy().length,
                itemBuilder: (context, index) {
                  return CandidatesInfo(
                    name: candidatesDummy()[index].name,
                    points: candidatesDummy()[index].points,
                    nums: index + 1,
                    colors: candidatesDummy()[index].color,
                  );
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}