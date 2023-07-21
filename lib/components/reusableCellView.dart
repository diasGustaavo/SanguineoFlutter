import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusablePersonCellView extends StatelessWidget {
  final String image;
  final String name;
  final String bloodtype;
  final int? age;
  final String description;
  final Function onButtonPress;

  const ReusablePersonCellView({
    required this.image,
    required this.name,
    required this.bloodtype,
    this.age,
    required this.description,
    required this.onButtonPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white, // replace with your interColor2 color
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary, width: 0.8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Removed Expanded here
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Image.asset('images/blood.png',
                          width: 16, height: 16), // replace with your SVG asset
                      const SizedBox(width: 8),
                      Text(
                        bloodtype,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  if (age != null)
                    Text(
                      'Idade: $age',
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                      ),
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () => onButtonPress(),
            child: const Text(
              'Agendar doação',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
