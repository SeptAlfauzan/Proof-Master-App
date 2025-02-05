import 'package:proofmaster/app/data/responses/student/post_result_diagnostic_test_response/post_diagnostic_result_response.dart';
import 'package:proofmaster/app/domain/entities/diagnostic_quiz_result_dto/diagnosticquizresultdto.dart';
import 'package:proofmaster/app/domain/entities/quiz/quiz_dto.dart';

abstract class QuizRepository {
  Future<QuizDTO> getDiagnosticQuizQuestionsFrom(String id);
  Future<QuizDTO> getProofCompetenceQuizQuestionsFrom(String id);
  Future<PostDiagnosticResultResponse> postDiagnosticQuizResult(
      String quizId, DiagnosticQuizResultDto dto);
  Future<PostDiagnosticResultResponse> postProofCompetenceResult(
      String quizId, int score);
  void dispose();
}
