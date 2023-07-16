import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nsf_v2/application/di/di.config.dart';
	
final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init', // default  
  preferRelativeImports: true, // default  
  asExtension: true, // default  
)  
void configureDependencies() {
  getIt.init();
}  