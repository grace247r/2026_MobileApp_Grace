import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                
                Container(
                  height: 180,
                  width: double.infinity,
                  color: const Color(0xFFE1F1FF), // Biru sangat muda
                  child: Stack(
                    children: [
                      // Pattern Kiri
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: SvgPicture.network(
                          "https://www.static-src.com/frontend/account/static/1.20.0-1/mobile/img/account-background-pattern-left.5a5aea70.svg",
                          height: 100,
                        ),
                      ),
                      // Pattern Kanan
                      Positioned(
                        right: 0,
                        top: 0,
                        child: SvgPicture.network(
                          "https://www.static-src.com/frontend/account/static/1.20.0-1/mobile/img/account-background-pattern-right.8653678e.svg",
                          height: 100,
                        ),
                      ),
                      // Logo blibli tiket di atas
                      Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "blibli",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF007BFF),
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(
                              Icons.circle,
                              size: 8,
                              color: Color(0xFFFFD700),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              "tiket",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Color(0xFF007BFF),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      Positioned(
                        top: 45,
                        left: 10,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.grey,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ),

                
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 16, right: 16),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                       
                        const CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xFFE1F1FF),
                          backgroundImage: NetworkImage(
                            "https://image.idntimes.com/post/20250915/upload_8215da986f0f08a2b8a320fd48df7d2a_25e6f80c-3efb-405d-b857-e299b15b0b0b.png",
                          ), 
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Masuk",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF007BFF),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Tidak punya akun? ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Daftar",
                                style: TextStyle(
                                  color: Color(0xFF007BFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 3. MENU LIST
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  _buildMenuItem(Icons.help_outline, "Bantuan BlibliCare"),
                  const Divider(height: 1, indent: 55),
                  _buildMenuItem(Icons.storefront_outlined, "Jual di Blibli"),
                ],
              ),
            ),

            const SizedBox(height: 100), // Spasi sebelum footer
            // 4. FOOTER
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 18,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Tentang Blibli",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "All Rights Reserved",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),

    
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4, 
        selectedItemColor: const Color(0xFF007BFF),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Beranda",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events_outlined),
            label: "Blibli Bonus",
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.shopping_bag_outlined),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: const Text(
                      '0',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            label: "Bag",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: "Daftar pesanan",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Akun",
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {},
    );
  }
}
