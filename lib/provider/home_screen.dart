import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../views/widgets/top_rated.dart';
import '../views/widgets/trending_slider.dart';
import '../views/widgets/upcoming_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
          height: 45,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              SizedBox(height: 32),
              const TrendingSlider(),
              SizedBox(height: 32),
              Text(
                'Top rated movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              SizedBox(height: 32),
              const TopRated(),
              SizedBox(height: 32),
              Text(
                'Upcoming movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              SizedBox(height: 32),
              const UpcomingSlider(),
            ],
          ),
        ),
      ),
    );
  }
}


