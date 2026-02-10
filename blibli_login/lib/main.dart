import 'package:flutter/material.dart';
import 'profile_page.dart'; // Pastikan file profile_page.dart sudah ada

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // Memindahkan konten ke widget terpisah agar Navigator bisa bekerja
      home: BlibliLoginPage(),
    );
  }
}

// Widget baru untuk halaman Login agar context Navigator valid
class BlibliLoginPage extends StatelessWidget {
  const BlibliLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  child: Image.network(
                    "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/11/02/38942d92-652e-4b16-9eb7-113ca69e81f1-1698921296142-0b97418fb0548ee6e463e1c90ccb1536.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Image.network(
                        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/original/test-discovery/2023/08/09/ab858d80-6dae-4ada-bada-cb81e130ff84-1691548783277-327996318bac9f6f2b2c4359ce4629d6.png",
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 35,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(height: 500),
                    Container(
                      
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nomor HP atau email',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.all(16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            width: double.infinity,
                            height: 54,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator sekarang akan bekerja karena context berada di bawah MaterialApp
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProfilePage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF007BFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Log in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            "Log in lebih cepat dengan",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _socialIcon(Icons.apple, color: Colors.black),
                              const SizedBox(width: 20),
                              _socialIcon(
                                Icons.facebook,
                                color: const Color(0xFF1877F2),
                              ),
                              const SizedBox(width: 20),
                              _socialIcon(
                                Icons.g_mobiledata,
                                color: Colors.red,
                                size: 45,
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                              children: [
                                TextSpan(text: "Belum punya akun? "),
                                TextSpan(
                                  text: "Daftar, yuk!",
                                  style: TextStyle(
                                    color: Color(0xFF007BFF),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 60),
                          RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                                height: 1.6,
                              ),
                              children: [
                                TextSpan(
                                  text: "Dengan log in, kamu menyetujui ",
                                ),
                                TextSpan(
                                  text: "Kebijakan Privasi",
                                  style: TextStyle(color: Color(0xFF007BFF)),
                                ),
                                TextSpan(text: " dan "),
                                TextSpan(
                                  text: "Syarat & Ketentuan",
                                  style: TextStyle(color: Color(0xFF007BFF)),
                                ),
                                TextSpan(text: " Blibli Tiket."),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "blibli",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF007BFF),
                                  fontSize: 18,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(width: 6),
                              const Icon(
                                Icons.circle,
                                size: 14,
                                color: Color(0xFFFFD700),
                              ),
                              const SizedBox(width: 6),
                              const Text(
                                "tiket",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF007BFF),
                                  fontSize: 18,
                                  letterSpacing: -0.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _socialIcon(IconData icon, {Color? color, double size = 28}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Center(
        child: Icon(icon, color: color, size: size),
      ),
    );
  }
}
