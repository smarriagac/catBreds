import 'package:flutter/material.dart';

import '../../../../../domain/models/breeds/breeds.dart';

class DetailCatBody extends StatelessWidget {
  const DetailCatBody({super.key, required this.cat});

  final Breeds cat;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const .symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 32,
        children: [
          _DetailSection(
            title: 'Descripción',
            icon: Icons.info_outline_rounded,
            child: Text(
              cat.description,
              textAlign: .justify,
              style: textTheme.bodyLarge?.copyWith(
                height: 1.5,
                color: colors.onSurface.withAlpha(200),
              ),
            ),
          ),

          Row(
            spacing: 16,
            children: [
              Expanded(
                child: _QuickInfoCard(
                  label: 'Origen',
                  value: cat.origin,
                  icon: Icons.location_on_rounded,
                  colors: colors,
                ),
              ),
              Expanded(
                child: _QuickInfoCard(
                  label: 'Vida',
                  value: '${cat.lifeSpan} años',
                  icon: Icons.timer_rounded,
                  colors: colors,
                ),
              ),
            ],
          ),

          _DetailSection(
            title: 'Personalidad',
            icon: Icons.psychology_rounded,
            child: Column(
              children: [
                _InfoRow(
                  label: 'Temperamento',
                  value: cat.temperament,
                  icon: Icons.auto_awesome_rounded,
                ),
                _InfoRow(
                  label: 'Inteligencia',
                  value: '${cat.intelligence}/5',
                  icon: Icons.lightbulb_outline_rounded,
                ),
                _InfoRow(
                  label: 'Adaptabilidad',
                  value: '${cat.adaptability}/5',
                  icon: Icons.shutter_speed_rounded,
                ),
              ],
            ),
          ),

          _DetailSection(
            title: 'Cuidados y Otros',
            icon: Icons.health_and_safety_rounded,
            child: Column(
              children: [
                _InfoRow(
                  label: 'Energía',
                  value: '${cat.energyLevel}/5',
                  icon: Icons.bolt_rounded,
                ),
                _InfoRow(
                  label: 'Aseo (Grooming)',
                  value: '${cat.grooming}/5',
                  icon: Icons.brush_rounded,
                ),
                _InfoRow(
                  label: 'Hipoalergénico',
                  value: cat.hypoallergenic == 1 ? 'Sí' : 'No',
                  icon: Icons.health_and_safety_outlined,
                ),
                if (cat.altNames != null && cat.altNames!.isNotEmpty)
                  _InfoRow(
                    label: 'Otros Nombres',
                    value: cat.altNames!,
                    icon: Icons.badge_rounded,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailSection extends StatelessWidget {
  const _DetailSection({
    required this.title,
    required this.icon,
    required this.child,
  });

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: .start,
      spacing: 12,
      children: [
        Row(
          spacing: 8,
          children: [
            Icon(icon, size: 20, color: colors.primary),

            Text(
              title,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: .bold,
                color: colors.primary,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        Container(
          width: .infinity,
          padding: const .all(16),
          decoration: BoxDecoration(
            color: colors.surfaceContainerLow,
            borderRadius: .circular(16),
          ),
          child: child,
        ),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: colors.onSurfaceVariant),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: textTheme.labelSmall?.copyWith(
                    color: colors.onSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colors.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickInfoCard extends StatelessWidget {
  const _QuickInfoCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.colors,
  });

  final String label;
  final String value;
  final IconData icon;
  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.primaryContainer.withAlpha(40),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.primary.withAlpha(30)),
      ),
      child: Column(
        children: [
          Icon(icon, color: colors.primary),
          const SizedBox(height: 8),
          Text(
            label,
            style: textTheme.labelSmall?.copyWith(
              color: colors.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            textAlign: TextAlign.center,
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colors.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
