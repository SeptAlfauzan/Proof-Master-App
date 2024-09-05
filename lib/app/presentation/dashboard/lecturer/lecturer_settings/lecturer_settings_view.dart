import 'package:flutter/material.dart';
import 'package:proofmaster/app/presentation/dashboard/lecturer/lecturer_settings/widgets/lecturer_settings_content.dart';
import 'package:proofmaster/app/presentation/dashboard/lecturer/lecturer_settings/widgets/top_banner_lecturer_settings.dart';
import 'package:proofmaster/app/templates/background_pattern.dart';

class LecturerSettingsView extends StatelessWidget {
  const LecturerSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundPattern(
      appBarTitle: "Profil",
      topChildren: const TopBannerLecturerSettings(),
      mainChildren: const LecturerSettingsContent(),
    );
  }
}