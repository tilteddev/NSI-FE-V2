import 'package:nsf_v2/application/annotations/field_to_ui/field_to_ui_data.dart';


@FieldToUI()
class Test {
  @Data('a_key')
  final String a;

  @Data('b_key')
  final int b;

  const Test(this.a, this.b);
}