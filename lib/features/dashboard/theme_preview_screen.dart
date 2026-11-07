import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_theme.dart';

class ThemePreviewScreen extends StatefulWidget {
  const ThemePreviewScreen({super.key});

  @override
  State<ThemePreviewScreen> createState() => _ThemePreviewScreenState();
}

class _ThemePreviewScreenState extends State<ThemePreviewScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tableau de bord')),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.md),
        children: const <Widget>[
          _KpiCard(
            label: 'Produit Net Bancaire',
            value: '12,4 M TND',
            delta: '+4,2 % vs mois précédent',
            isPositive: true,
          ),
          SizedBox(height: AppSpacing.md),
          _KpiCard(
            label: 'Créances douteuses',
            value: '6,1 %',
            delta: '+0,8 pt vs mois précédent',
            isPositive: false,
          ),
          SizedBox(height: AppSpacing.lg),
          TextField(
            decoration: InputDecoration(labelText: 'Rechercher une agence'),
          ),
          SizedBox(height: AppSpacing.md),
          FilledButton(
            onPressed: null,
            child: Text('Voir le détail'),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() => _selectedIndex = index);
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Accueil',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_outlined),
            label: 'Finances',
          ),
          NavigationDestination(
            icon: Icon(Icons.insights_outlined),
            label: 'KPI',
          ),
          NavigationDestination(
            icon: Icon(Icons.show_chart),
            label: 'Prévisions',
          ),
          NavigationDestination(
            icon: Icon(Icons.more_horiz),
            label: 'Plus',
          ),
        ],
      ),
    );
  }
}

class _KpiCard extends StatelessWidget {
  const _KpiCard({
    required this.label,
    required this.value,
    required this.delta,
    required this.isPositive,
  });

  final String label;
  final String value;
  final String delta;
  final bool isPositive;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme scheme = Theme.of(context).colorScheme;
    final Color deltaColor =
    isPositive ? context.semantic.positive : context.semantic.negative;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              label,
              style: textTheme.labelLarge?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(value, style: textTheme.headlineSmall),
            const SizedBox(height: AppSpacing.xs),
            Row(
              children: <Widget>[
                Icon(
                  isPositive ? Icons.trending_up : Icons.trending_down,
                  size: 18,
                  color: deltaColor,
                ),
                const SizedBox(width: AppSpacing.xs),
                Text(
                  delta,
                  style: textTheme.labelMedium?.copyWith(color: deltaColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}