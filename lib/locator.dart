import 'package:proofmaster/app/utils/navigation_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => BuildContextProvider());
}