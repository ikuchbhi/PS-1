import 'package:http/http.dart' as http;

class GDriveHTTPClient extends http.BaseClient {
  final Map<String, String> headers;

  final http.Client _inner = http.Client();

  GDriveHTTPClient(this.headers);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers.addAll(headers);
    return _inner.send(request);
  }

  @override
  void close() {
    _inner.close();
    super.close();
  }
}  