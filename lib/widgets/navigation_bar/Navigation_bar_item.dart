import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarItems extends StatefulWidget {
  final String title;
  final Function? onPress;

  const NavBarItems({Key? key, required this.title, this.onPress})
      : super(key: key);

  @override
  _NavBarItemsState createState() => _NavBarItemsState();
}

class _NavBarItemsState extends State<NavBarItems>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        _animationController.forward();
      },
      onExit: (_) {
        _animationController.reverse();
      },
      child: GestureDetector(
        onTap: () {
          if (widget.onPress != null) {
            widget.onPress!(); // Call the onPress function if it is not null
          }
        },
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Text(
                widget.title,
                style: GoogleFonts.openSans(
                  textStyle:
                      const TextStyle(color: Colors.blue, letterSpacing: .5),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
