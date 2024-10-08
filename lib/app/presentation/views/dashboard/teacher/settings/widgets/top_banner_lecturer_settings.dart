import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:proofmaster/app/presentation/providers/user_provider/user_provider.dart';
import 'package:proofmaster/app/presentation/widgets/error_handler.dart';
import 'package:proofmaster/app/presentation/widgets/shimmer_loader.dart';
import 'package:proofmaster/router.dart';
import 'package:proofmaster/theme/text_theme.dart';

class TopBannerLecturerSettings extends ConsumerWidget {
  const TopBannerLecturerSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final isRefreshing = ref.watch(isRefreshingProvider);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 56.0),
      child: isRefreshing
          ? const _loaderContent()
          : user.when(
              data: (data) => _content(
                  name: data.data?.name ?? "-",
                  email: data.data?.email ?? "-",
                  imageUrl: data.data?.photoUrl),
              error: (error, _) => ErrorHandler(
                  errorMessage: "$error",
                  action: () => ref.read(userProvider.notifier).refresh()),
              loading: () => const _loaderContent()),
    );
  }
}

class _content extends StatelessWidget {
  final String name;
  final String email;
  final String? imageUrl;
  const _content(
      {required this.name, required this.email, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          imageUrl == null
              ? const CircleAvatar(
                  radius: 28.0,
                  backgroundImage: AssetImage("assets/images/dumy_avatar.jpeg"),
                )
              : GestureDetector(
                  onTap: () => context.push(ProofmasterRoute.changePfp),
                  child: CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(imageUrl!),
                  ),
                ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextTheme.proofMasterTextTheme.displayMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              Flexible(
                child: Text(
                  email,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextTheme.proofMasterTextTheme.displaySmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _loaderContent extends StatelessWidget {
  const _loaderContent();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ShimmerLoader(
            isLoading: true,
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: AssetImage("assets/images/dumy_avatar.jpeg"),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShimmerLoader(
                isLoading: true,
                child: Container(
                  color: Colors.white,
                  width: 200,
                  height: 24,
                ),
              ),
              ShimmerLoader(
                isLoading: true,
                child: Container(
                  color: Colors.white,
                  width: 140,
                  height: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
