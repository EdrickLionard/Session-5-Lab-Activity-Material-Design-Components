import 'package:flutter/material.dart';
import 'package:minimumshop/components/my_button.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage1 extends StatefulWidget {
  const OnboardingPage1({super.key});

  @override
  State<OnboardingPage1> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage1> {
  // Controller untuk PageView
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // Daftar konten onboarding
  final List<Map<String, String>> _onboardingData = [
    {
      "title": "Selamat Datang di Kohi",
      "subtitle": "Nikmati pengalaman minum kopi terbaik bersama kami.",
      "image": "assets/images/coffee1.json",
    },
    {
      "title": "Beragam Pilihan Kopi",
      "subtitle": "Kami menyediakan berbagai jenis kopi sesuai selera Anda.",
      "image": "assets/images/coffee2.json",
    },
    {
      "title": "Pesan dengan Mudah",
      "subtitle": "Hanya dengan beberapa klik, kopi Anda siap dinikmati.",
      "image": "assets/images/coffee3.json",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                final data = _onboardingData[index];
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Gambar Onboarding
                      Lottie.asset(
                        data["image"]!,
                        height: 250,
                      ),
                      const SizedBox(height: 20),
                      // Judul
                      Text(
                        data["title"]!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      // Subjudul
                      Text(
                        data["subtitle"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Indikator Halaman dan Tombol Navigasi
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Indikator Halaman
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      height: 8,
                      width: _currentPage == index ? 20 : 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Theme.of(context).colorScheme.primary
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Tombol Navigasi
                MyButton(
                  onTap: () {
                    if (_currentPage == _onboardingData.length - 1) {
                      Navigator.pushNamed(context, 'shop_page');
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Text(
                    _currentPage == _onboardingData.length - 1
                        ? "Mulai"
                        : "Lanjut",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
