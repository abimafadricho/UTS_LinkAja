import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // untuk melacak tab yang aktif
  final List<Widget> _pages = [
    MainHomePage(), // Halaman Utama
    TransactionHistoryPage(), // Halaman History
    Center(child: Text('Pay')), // Placeholder untuk Pay
    Center(child: Text('Inbox')), // Placeholder untuk Inbox
    AccountPage(), // Halaman Profil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Pay'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}

// Halaman Utama (Home)
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
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.red),
        SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

// Halaman Profil (Account)
class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}
class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Account'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {

              },
              child: CircleAvatar(
              backgroundImage: AssetImage('assets/profil.jpg'),
              radius: 30,
            ),
            ),
            title: Text('Abima Fadricho Syuhadak'),
            subtitle: Text('+6281357706168'),
          ),
          Divider(),
          ListTile(
            title: Text('Account Type'),
            subtitle: Text('Full Service'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Account Settings'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('LinkAja Syariah'),
            subtitle: Text('Not Active'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Payment Method'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Email'),
            subtitle: Text('abimafadricho.29@gmail.com'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Security Question'),
            subtitle: Text('Set'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('PIN Settings'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Language'),
            subtitle: Text('English'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            title: Text('Help Center'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// Halaman Riwayat Transaksi (History)
class TransactionHistoryPage extends StatefulWidget {
  @override
  _TransactionHistoryPageState createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  bool _showPending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Transaction History'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPending = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text('Pending', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          color: _showPending ? Colors.red : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showPending = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text('Done', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 4),
                        Container(
                          height: 2,
                          color: !_showPending ? Colors.red : Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: _showPending
                  ? _buildPendingTransactions() // Menampilkan transaksi Pending
                  : _buildDoneTransactions(), // Menampilkan transaksi Done
            ),
          ),
        ],
      ),
    );
  }

  // Transaksi Pending
  List<Widget> _buildPendingTransactions() {
    return [
      _buildTransactionItem('Pending QRIS', '20 Oct 2024, 12:00 WIB', 'Rp150.000', 'Pending'),
      _buildTransactionItem('Top Up Mobile', '19 Oct 2024, 14:25 WIB', 'Rp50.000', 'Pending'),
    ];
  }

  // Transaksi Selesai (Done)
  List<Widget> _buildDoneTransactions() {
    return [
      _buildTransactionItem('Pay Merchant', '15 Sep 2024, 17:32 WIB', 'Rp45.400', 'Success'),
      _buildTransactionItem('Pay Merchant', '15 Sep 2024, 17:28 WIB', 'Rp55.000', 'Success'),
      _buildTransactionItem('Top Up from Bank', '15 Sep 2024, 17:26 WIB', 'Rp100.000', 'Success'),
      _buildTransactionItem('Pay QRIS', '31 Aug 2024, 11:49 WIB', 'Rp21.000', 'Success'),
      _buildTransactionItem('Pay ORIS', '31 Aug 2024, 11:40 WIB', 'Rp42.000', 'Success'),
    ];
  }

  Widget _buildTransactionItem(String title, String date, String amount, String status) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            SizedBox(height: 4),
            Text('Indomaret_purchase'),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text(status, style: TextStyle(color: status == 'Pending' ? Colors.orange : Colors.green)),
          ],
        ),
      ),
    );
  }
}
