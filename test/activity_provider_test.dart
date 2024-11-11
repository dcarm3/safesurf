import 'package:flutter_test/flutter_test.dart';
import 'package:safesurf/providers/activity_provider.dart';

void main() {
  test('Iniciar e detectar atividades (segura e suspeita)', () async {
    final activityProvider = ActivityProvider();

    activityProvider.startDetection();

    await Future.delayed(Duration(seconds: 1));
    expect(
      activityProvider.statusMessage.contains('Monitorando') ||
          activityProvider.statusMessage.contains('Atividade segura') ||
          activityProvider.statusMessage.contains('Atividade suspeita'),
      true,
    );

    await Future.delayed(Duration(seconds: 2));
    expect(
      activityProvider.statusMessage.contains('Atividade segura') ||
          activityProvider.statusMessage.contains('Atividade suspeita'),
      true,
    );

    activityProvider.stopDetection();
    expect(activityProvider.statusMessage, 'Monitoramento interrompido');
  });
}
