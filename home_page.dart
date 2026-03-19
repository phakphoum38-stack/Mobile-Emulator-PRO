import 'package:flutter/material.dart';
import 'emulator_page.dart';
import 'rom_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Library"),
      ),

      body: Center(
        child: ElevatedButton(

          child: const Text("Load ROM"),

          onPressed: () async {

            String? rom = await pickROM();

            if (rom != null) {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => EmulatorPage(romPath: rom),
                ),
              );

            }

          },
        ),
      ),
    );
  }
}
