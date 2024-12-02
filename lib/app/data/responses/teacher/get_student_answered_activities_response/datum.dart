import 'dart:convert';

import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final String? id;
  final String? title;
  final String? comment;
  final String? pdfUrl;

  const Datum({this.id, this.title, this.comment, this.pdfUrl});

  factory Datum.fromMap(Map<String, dynamic> data) => Datum(
        id: data['id'] as String?,
        title: data['title'] as String?,
        comment: data['comment'] as String?,
        pdfUrl: data['pdf_url'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'comment': comment,
        'pdf_url': pdfUrl,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Datum].
  factory Datum.fromJson(String data) {
    return Datum.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Datum] to a JSON string.
  String toJson() => json.encode(toMap());

  Datum copyWith({
    String? id,
    String? title,
    String? comment,
    String? pdfUrl,
  }) {
    return Datum(
      id: id ?? this.id,
      title: title ?? this.title,
      comment: comment ?? this.comment,
      pdfUrl: pdfUrl ?? this.pdfUrl,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title, comment, pdfUrl];
}