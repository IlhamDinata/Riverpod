import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key, this.isMobile = false});

  final bool? isMobile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              
            ],
          ),
        )
      ),
    );
  }
}
