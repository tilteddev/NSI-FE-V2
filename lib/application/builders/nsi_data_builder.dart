
import 'dart:async';
import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:nsf_v2/application/annotations/nsi_data.dart';
import 'package:source_gen/source_gen.dart';

const _dataAnnotationChecker = TypeChecker.fromRuntime(Data);
final _dartfmt = DartFormatter(indent: 2);

Builder nsiDataBuilder(BuilderOptions options) =>
    LibraryBuilder(NSIDataGenerator(), generatedExtension: '.nsidata.dart',);
    
class NSIDataGenerator extends GeneratorForAnnotation<NSIData> {
  @override
  FutureOr<String> generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    return _generateSource(element as ClassElement, annotation);
  }

  String _generateSource(ClassElement classElement, ConstantReader annotation) {
    List<String> properties = getProperties(classElement);
    
    final ext = cb.Library((libBuilder) {
      libBuilder.directives.addAll([
        cb.Directive.import('package:nsf_v2/application/view/property.dart'),
        cb.Directive.import(classElement.source.uri.toString()),
      ]);

      libBuilder.body.add(
        cb.Extension((extBuilder) {
          extBuilder.name = 'Extension${classElement.declaration.name!}';
          extBuilder.on = cb.refer(classElement.declaration.name!);
          extBuilder.methods.addAll([
            cb.Method((methodBuilder) {
              methodBuilder.name = 'properties';
              methodBuilder.type = cb.MethodType.getter;
              methodBuilder.lambda = true;
              methodBuilder.returns = cb.refer("Map<String, Property>");
              methodBuilder.body = cb.Code('{ ${properties.join(',').toString()}}');
            })
          ]);
        })
      );
    });
    return _dartfmt.format(ext.accept(cb.DartEmitter()).toString());
  }

  List<String> getProperties(ClassElement classElement) {
    List<String> props = [];

    for(var field in classElement.fields) {
      if(_dataAnnotationChecker.hasAnnotationOfExact(field)) {
        String annotationKey = _dataAnnotationChecker.firstAnnotationOfExact(field)!.getField('key')!.toStringValue()!;
        props.add('"${annotationKey}": ${cb.refer('Property<${field.type}>').newInstance([
          cb.CodeExpression(cb.Code(field.name)),
        ]).code.accept(cb.DartEmitter()).toString()}');
      }
    }
    return props;
  }

}