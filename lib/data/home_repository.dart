import 'package:cyarty/data/home_api_provider.dart';
import 'package:cyarty/domain/cases_model.dart';
import 'package:cyarty/domain/repository_adapter.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IHomeProvider provider;

  @override
  Future<CasesModel?> getCases() async {
    final cases = await provider.getCases("/summary");
    if (cases.status.hasError) {
      return Future.error(cases.status.toString());
    } else {
      return cases.body;
    }
  }
}