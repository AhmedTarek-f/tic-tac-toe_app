import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/constants/app_fonts.dart';

class PlayersNamesForm extends StatelessWidget {
  const PlayersNamesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            TextFormField(
              style: AppFonts.fontSize16Normal,
              decoration: const InputDecoration(
                  hintText: "First player name"
              ),
            ),
            const SizedBox(height: 16,),
            TextFormField(
              style: AppFonts.fontSize16Normal,
              decoration: const InputDecoration(
                  hintText: "Second player name"
              ),
            ),
          ],
        )
    );
  }
}