import 'package:appwrite/appwrite.dart';
import 'package:uuid/uuid.dart';

class ApiClient {
  /// Account
  Account account(Client client) => Account(client);

  /// Storage service
  Storage storage(Client client) => Storage(client);

  /// Databases
  Databases database(Client client, String databaseId) =>
      Databases(client, databaseId: databaseId);

  /// Locale
  Locale local(Client client) => Locale(client);

  /// Functions
  Functions functions(Client client) => Functions(client);

  /// Avatars
  Avatars avatars(Client client) => Avatars(client);

  /// Teams
  Teams teams(Client client) => Teams(client);

  /// Realtime service of Appwrite
  Realtime realtime(Client client) => Realtime(client);

  /// Get the unique instance of the AppWrite client
  Uuid uuid = const Uuid();
}
