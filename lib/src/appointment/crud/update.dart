import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

import '../../../sewa_model.dart';
import '../../appwrite.dart';

Future<Document> updateHospitalAppointment(
  AppointmentRequest request,
  String collectionId,
  Client client,
  String databaseId,
  String documentId,
) async {
  final ApiClient apiClient = ApiClient();
  final Document document =
      await apiClient.database(client, databaseId).updateDocument(
            collectionId: collectionId,
            documentId: documentId,
            data: request.toJson(),
          );
  return document;
}
