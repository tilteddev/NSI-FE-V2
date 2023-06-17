
import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:nsf_v2/application/annotations/field_to_ui/field_to_ui_data.dart';
import 'package:source_gen/source_gen.dart';

const _dataAnnotationChecker = TypeChecker.fromRuntime(Data);

Builder fieldToUIBuilder(BuilderOptions options) =>
    LibraryBuilder(FieldToUIGenerator(), generatedExtension: '.model.dart');
    
class FieldToUIGenerator extends GeneratorForAnnotation<FieldToUI> {
  @override
  FutureOr<String> generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return _generateSource(element as ClassElement, annotation);
  }

  String _generateSource(ClassElement classElement, ConstantReader annotation) {
    for(var field in classElement.fields) {
      if(_dataAnnotationChecker.hasAnnotationOfExact(field)) {
        print('${field.name}, ${_dataAnnotationChecker.firstAnnotationOfExact(field)!.getField('key')!.toStringValue()}');
      }
    }

    return "//yay";
  }

}