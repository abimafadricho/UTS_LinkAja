import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import yang benar

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('LinkAja', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: Column(
        children: [
          // Container saldo dan bonus
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ABIMA FADRICHO SYUHADAK',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Your Balance', style: TextStyle(color: Colors.white)),
                            Text('Rp 9.747', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text('Bonus Balance', style: TextStyle(color: Colors.white)),
                            Row(
                              children: [
                                Icon(Icons.circle, size: 10, color: Colors.yellow),
                                Text(' 0', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Bagian menu utama
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.add_circle_outline, size: 30, color: Colors.red),
                    Text('Top Up'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.account_balance_wallet_outlined, size: 30, color: Colors.red),
                    Text('CashOut'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.send, size: 30, color: Colors.red),
                    Text('Send Money'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.grid_view, size: 30, color: Colors.red),
                    Text('See All'),
                  ],
                ),
              ],
            ),
          ),
          // GridView untuk menu lain
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              padding: EdgeInsets.all(16),
              children: [
                _buildMenuItem(Icons.phone_android, 'Pulsa/Data'),
                _buildMenuItem(Icons.flash_on, 'Electricity'),
                _buildMenuItem(Icons.tv, 'Cable TV & Internet'),
                _buildMenuItem(Icons.credit_card, 'Kartu Uang Elektronik'),
                _buildMenuItem(Icons.church, 'Gereja'),
                _buildMenuItem(Icons.favorite, 'Infaq'),
                _buildMenuItem(Icons.card_giftcard, 'Other Donations'),
                _buildMenuItem(Icons.more_horiz, 'More'),
              ],
            ),
          ),
          // Tambahkan carousel slider di bawah GridView
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Iklan Terkini', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 150, // Tinggi slider
                    autoPlay: true, // Auto play slide
                    enlargeCenterPage: true, // Perbesar gambar di tengah
                  ),
                  items: _getAdSlides(), // List gambar iklan
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk item menu di GridView
  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.red),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  // Fungsi untuk mendapatkan list iklan (bisa berupa list gambar)
  List<Widget> _getAdSlides() {
    List<String> adImages = [
      'assets/banner1.jpg', 
      'assets/banner2.jpg',
      'assets/banner3.jpg',
    ];

    return adImages.map((imagePath) {
      return Container(
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList();
  }
}
