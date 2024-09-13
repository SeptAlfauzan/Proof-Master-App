import 'dart:io';
import 'package:fimber/fimber.dart';
import 'package:http/http.dart' as http;
import 'package:proofmaster/app/data/responses/student/post_file_activity_response/upload_file_activity_response/upload_file_activity_response.dart';
import 'package:proofmaster/app/domain/repositories/activity_repository.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final _baseUrl = 'oh-my-api-seven.vercel.app';
  ActivityRepositoryImpl(this.client);
  final http.Client client;
  @override
  Future<UploadFileActivityResponse> uploadFile(
      File pdfFile, String filename, String id) async {
    try {
      final queries = {'id': '8913d132-a776-4742-8adb-1ede7c3095fb'};
      final url = Uri.https(_baseUrl, "api/end-to-end", queries);

      final request = http.MultipartRequest('POST', url);
      Map<String, String> requestBody = <String, String>{'id': "value1"};
      request.headers['Authorization'] = "Bearer change soon";

      request.files.add(http.MultipartFile(
        'file',
        pdfFile.readAsBytes().asStream(),
        pdfFile.lengthSync(),
        filename: filename,
      ));
      request.fields.addAll(requestBody);

      final streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      Fimber.d("response from repository $response");
      print(response.body);

      if (response.statusCode == 200) {
        final result = UploadFileActivityResponse.fromJson(response.body);
        return result;
      } else {
        throw Exception(
            'Failed to upload file and register. Status code: ${response.statusCode}');
      }
    } catch (e) {
      Fimber.e("response from repository $e");
      rethrow;
    }
  }
}
