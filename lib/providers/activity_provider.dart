import 'package:flutter/material.dart';
import '../services/mock_backend_service.dart';

class ActivityProvider with ChangeNotifier {
  bool _isMonitoring = false;
  String _statusMessage = '';
  final MockBackendService _backendService = MockBackendService();

  String get statusMessage => _statusMessage;

  void startDetection() {
    _isMonitoring = true;
    _statusMessage = 'Monitorando atividades...';
    notifyListeners();

    _monitorActivities();
  }

  Future<void> _monitorActivities() async {
    while (_isMonitoring) {
      final activity = _backendService.getActivityData();

      if (activity['suspicious']) {
        _statusMessage =
            'Atividade suspeita detectada: ${activity['activity']}';
      } else {
        _statusMessage = 'Atividade segura: ${activity['activity']}';
      }

      notifyListeners();
      await Future.delayed(Duration(seconds: 2));
    }
  }

  void stopDetection() {
    _isMonitoring = false;
    _statusMessage = 'Monitoramento interrompido';
    notifyListeners();
  }
}
