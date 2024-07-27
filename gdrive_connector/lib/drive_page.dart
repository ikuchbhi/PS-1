import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter/material.dart';
import 'package:googleapis/drive/v3.dart';

import 'gdrive_http_client.dart';

class DrivePage extends StatefulWidget {
  final firebase.User user;
  final Map<String, String> authHeaders;

  const DrivePage({
    required this.user,
    required this.authHeaders,
    super.key,
  });

  @override
  State<DrivePage> createState() => _DrivePageState();
}

class _DrivePageState extends State<DrivePage> {
  late DriveApi client;

  @override
  void initState() {
    super.initState();
    client = DriveApi(
      GDriveHTTPClient(widget.authHeaders),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drive Page"),
      ),
      body: FutureBuilder(
        future: client.files.list(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }

          final files = snapshot.data as FileList;
          return ListView.builder(
            itemCount: files.files!.length,
            itemBuilder: (context, index) {
              final file = files.files![index];
              return ListTile(
                title: Text(file.name!),
              );
            },
          );
        },
      ),
    );
  }
}
