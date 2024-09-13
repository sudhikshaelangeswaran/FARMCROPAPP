import 'package:assg_2/ordersPage.dart';
import 'package:assg_2/thankPage.dart';
import 'package:flutter/material.dart';

import 'payPage.dart';
import 'walletPage.dart';

class cardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Wallet',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => thankPage()),
                );
              },
              child: PaymentMethodItem(
                icon: Icons.phone_iphone,
                title: 'Apple Pay',
                status: 'Connected',
              ),
            ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => thankPage()),
          );
        },
             child:PaymentMethodItem(
              icon: Icons.credit_card,
              title: 'Mastercard',
              status: 'Connected',
              trailingText: '•••• 2766',
            ),
      ),


      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => thankPage()),
          );
        },

        child: PaymentMethodItem(
              icon: Icons.credit_card,
              title: 'visacard',
              status: 'Connected',
              trailingText: '•••• 9956',
            ),
      ),

            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WalletPage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFF3E5F5),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Add New Card',
                style: TextStyle(color: Colors.lightGreen, fontSize: 16),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    side: BorderSide(color: Colors.lightGreen),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.lightGreen, fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => thankPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String status;
  final String? trailingText;

  PaymentMethodItem({
    required this.icon,
    required this.title,
    required this.status,
    this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 28),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (trailingText != null) ...[
            Text(
              trailingText!,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(width: 16),
          ],
          Text(
            status,
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: cardPage(),
));
