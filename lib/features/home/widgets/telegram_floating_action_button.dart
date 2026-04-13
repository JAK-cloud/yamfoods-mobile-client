import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../app/theme/app_sizes.dart';
import '../../../../core/utils/link_launcher.dart';

class TelegramFloatingActionButton extends StatefulWidget {
  const TelegramFloatingActionButton({super.key});

  static const double diameter = 55;

  @override
  State<TelegramFloatingActionButton> createState() =>
      _TelegramFloatingActionButtonState();
}

class _TelegramFloatingActionButtonState
    extends State<TelegramFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Mirrors the Help & Support Telegram card behavior:
    // try Telegram deep-link first, then fall back to web.
    const handle = 'noodo_bakery_bot';
    const deepLink = 'tg://resolve?domain=$handle';
    const webLink = 'https://t.me/$handle';

    const telegramColor = Color.fromARGB(255, 0, 174, 255);
    const iconColor = Color(0xFF0088CC);

    final scaleTween = Tween<double>(begin: 1.0, end: 1.06);
    final glowTween = Tween<double>(begin: 0.11, end: 0.22);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final scale = scaleTween.evaluate(_controller);
        final glow = glowTween.evaluate(_controller);

        return Transform.scale(
          scale: scale,
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: BorderRadius.circular(
                TelegramFloatingActionButton.diameter / 2,
              ),
              onTap: () => LinkLauncher.launchAny(urls: [deepLink, webLink]),
              child: Container(
                width: TelegramFloatingActionButton.diameter,
                height: TelegramFloatingActionButton.diameter,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: telegramColor.withValues(alpha: 0.30),
                  border: Border.all(
                    color: telegramColor.withValues(alpha: 0.65),
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: telegramColor.withValues(alpha: glow + 0.08),
                      blurRadius: 18,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withValues(alpha: 0.96),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.12),
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.telegram,
                        size: AppSizes.iconSize + 18,
                        color: iconColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
