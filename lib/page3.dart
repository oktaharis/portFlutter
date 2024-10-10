import 'package:flutter/material.dart';
import 'main.dart';  // Tambahkan ini jika ingin login mengarah ke main.dart

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> with SingleTickerProviderStateMixin {
  bool _isFormVisible = false;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isFormVisible = true;
      });
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background dengan gradient
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.tealAccent.shade100,
                  Colors.purpleAccent.shade100
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Animated Login Form
          FadeTransition(
            opacity: _fadeAnimation,
            child: SingleChildScrollView(  // Tambahkan SingleChildScrollView di sini
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 100,
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,  // Agar tidak terhalang keyboard
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.teal[800],
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 40),  // Jarak antara judul dan form
                  _buildTextInput(
                    hint: 'Username',
                    icon: Icons.person_outline,
                  ),
                  SizedBox(height: 20),
                  _buildTextInput(
                    hint: 'Password',
                    icon: Icons.lock_outline,
                    obscureText: true,
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                    onTap: () {
                      // Logic lupa password
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.teal[300],
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      // Arahkan ke halaman home() atau page2() setelah login
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => home()), // Mengarah ke home.dart setelah login
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.purpleAccent[200],  // Warna tombol
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      shadowColor: Colors.purpleAccent[100],
                      elevation: 10,
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk membangun input teks
  Widget _buildTextInput({
    required String hint,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.teal[300]),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.teal[200]),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
