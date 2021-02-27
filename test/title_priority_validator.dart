import 'package:to_do_list/screens/add_task_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('empty title returns error string',(){
   var result =  TitleFieldValidator.validate('');
   expect(result, 'Please enter a task title');
  });

  test('non-empty title returns null',(){
    var result =  TitleFieldValidator.validate('title');
    expect(result, null);
  });

  test('empty priority returns error string',(){
    var result =  PriorityFieldValidator.validate(null);
    expect(result, 'Please select a priority level');
  });

  test('non-empty priority returns null',(){
    var result =  PriorityFieldValidator.validate('Low');
    expect(result, null);
  });
}