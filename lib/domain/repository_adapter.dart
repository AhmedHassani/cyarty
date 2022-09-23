import 'package:cyarty/domain/cases_model.dart';

abstract class IHomeRepository {
  Future<CasesModel?> getCases();
}