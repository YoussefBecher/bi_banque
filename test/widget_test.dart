import 'package:bi_banque/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('affiche le tableau de bord', (WidgetTester tester) async {
    await tester.pumpWidget(const BiBanqueApp());

    expect(find.text('Tableau de bord'), findsOneWidget);
    expect(find.text('Produit Net Bancaire'), findsOneWidget);
  });
}