import 'package:injectable/injectable.dart';

@module
abstract class AddressModule {
  @Named(Address.keyExamSocket)
  Address get examSocketAddress => Address('192.168.43.229', '3000');
  @Named(Address.keyExamServer)
  Address get examServerAddress => Address('192.168.43.229', '3000');
}

class Address {
  static const keyExamSocket = 'examSocketAddress';
  static const keyExamServer = 'examServerAddress';

  final String host;
  final String port;
  final bool isHttps;

  Address(
    this.host,
    this.port, {
    this.isHttps = false,
  });

  @override
  String toString() {
    return '$host:$port';
  }
}
