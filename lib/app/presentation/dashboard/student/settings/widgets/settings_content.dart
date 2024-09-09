import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proofmaster/app/presentation/dashboard/student/settings/widgets/logout_dialog.dart';
import 'package:proofmaster/app/presentation/providers/auth_provider/auth_provider.dart';
import 'package:proofmaster/router.dart';
import 'package:proofmaster/theme/text_theme.dart';
import 'package:proofmaster/widgets/setting_menu_item.dart';

class SettingsContent extends ConsumerWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pengaturan",
                  style: CustomTextTheme.proofMasterTextTheme.bodyLarge
                      ?.copyWith(color: Colors.black),
                ),
              ),
              SettingMenuItem(
                text: "Ubah password",
                onTap: () => context.go(ProofmasterRoute.forgotPassword),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SettingMenuItem(text: "Unduh semua materi", onTap: () async {}),
              const SizedBox(
                height: 16.0,
              ),
              SettingMenuItem(
                text: "Keluar",
                textColor: Colors.red,
                color: Colors.red,
                onTap: () async {
                  await showLogoutDialog(
                      context: context,
                      onSubmit: () {
                        ref.read(authProvider.notifier).signout();
                        context.push(ProofmasterRoute.auth);
                      });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
