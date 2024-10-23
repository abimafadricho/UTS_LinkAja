import 'package:flutter/material.dart';

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

  List<Widget> _buildPendingTransactions() {
    return [
      _buildTransactionItem('Pending QRIS', '20 Oct 2024, 12:00 WIB', 'Rp150.000', 'Pending'),
      _buildTransactionItem('Top Up Mobile', '19 Oct 2024, 14:25 WIB', 'Rp50.000', 'Pending'),
    ];
  }

  List<Widget> _buildDoneTransactions() {
    return [
      _buildTransactionItem('Pay Merchant', '15 Sep 2024, 17:32 WIB', 'Rp45.400', 'Success'),
      _buildTransactionItem('Pay Merchant', '15 Sep 2024, 17:28 WIB', 'Rp55.000', 'Success'),
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
