import 'package:flutter/cupertino.dart';

class ListviewMainpage extends StatelessWidget {
  const ListviewMainpage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Container(
        width: size.width * 0.3,
        height: size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSanbKl0mH4nwUsqCUVTEPt3VYtCE7uXSFXhXxo4Eqssg&s"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
