import 'dart:core';

// Definindo a classe Notification para representar cada notificação.
class Notification {
  String description; // Descrição da notificação.
  DateTime createdAt; // Data e hora de criação da notificação.

  // Construtor da classe Notification.
  Notification(this.description, this.createdAt);
}

// Função principal do programa.
void main() {
  // Lista de notificações do backend.
  List<Map<String, dynamic>> notificationsFromBackend = [
    {"description": "notification1", "created_at": "23/03/2024 00:00:00"},
    {"description": "notification2", "created_at": "23/02/2024 00:00:00"},
    {"description": "notification3", "created_at": "07/12/2023 00:00:00"},
    {"description": "notification4", "created_at": "28/11/2023 00:00:00"},
    {"description": "notification5", "created_at": "11/09/2023 00:00:00"},
    {"description": "notification6", "created_at": "07/12/2023 00:00:00"},
  ];

  // Convertendo os dados do backend em objetos Notification e armazenando em uma lista.
  List<Notification> notifications = notificationsFromBackend
      .map((notification) => Notification(
          notification['description'], parseDate(notification['created_at'])))
      .toList();

  // Chamando a função para agrupar e imprimir as notificações.
  groupAndPrintNotifications(notifications);
}

// Função para converter uma string de data no formato 'dia/mês/ano hora:minuto:segundo' em um DateTime.
DateTime parseDate(String dateString) {
  List<String> parts = dateString.split(' ');
  List<String> dateParts = parts[0].split('/');

  int day = int.parse(dateParts[0]);
  int month = int.parse(dateParts[1]);
  int year = int.parse(dateParts[2]);

  // Criando um DateTime apenas com a data, sem levar em consideração a hora, minuto e segundo.
  return DateTime(year, month, day);
}

// Função para agrupar e imprimir as notificações.
void groupAndPrintNotifications(List<Notification> notifications) {
  // Mapa para armazenar as notificações agrupadas por tempo.
  Map<String, List<Notification>> groupedNotifications = {};

  // Iterando sobre cada notificação.
  notifications.forEach((notification) {
    DateTime now = DateTime.now();
    DateTime createdAt = notification.createdAt;
    Duration difference = now.difference(createdAt);
    String groupName;

    // Determinando em qual grupo a notificação será colocada com base na diferença entre a data de criação e a data atual.
    if (difference.inDays == 0) {
      groupName = 'Hoje';
    } else if (difference.inDays == 1) {
      groupName = 'Ontem';
    } else if (difference.inDays < 7) {
      groupName = '${difference.inDays} dia(s) atrás';
    } else if (difference.inDays < 30) {
      groupName = '${(difference.inDays / 7).floor()} semana(s) atrás';
    } else {
      groupName = '${(difference.inDays / 30).floor()} mês(es) atrás';
    }

    // Adicionando a notificação ao grupo correspondente.
    if (!groupedNotifications.containsKey(groupName)) {
      groupedNotifications[groupName] = [];
    }

    groupedNotifications[groupName]?.add(notification);
  });

  // Imprimindo as notificações agrupadas.
  groupedNotifications.forEach((groupName, notifications) {
    List<String> notificationDescriptions =
        notifications.map((notification) => notification.description).toList();
    print('${notificationDescriptions.join(', ')} - $groupName');
  });
}
