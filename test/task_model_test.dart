import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_list/helpers/databse_helper.dart';
import 'package:to_do_list/models/task_model.dart';




void main() async{
  final  db = new DatabaseHelper();

  //TestWidgetsFlutterBinding.ensureInitialized ();


test('Add task', () async {
  var _title = 'task1';
  var _date = DateTime.now();
  var _priority = 'Low';
  Task task = new Task(title: _title,date: _date, priority: _priority);
  task.status=0;
  print(task.title +' ' +task.date.toString()+ ' ' + task.priority);
  int l =  await db.insertTask(task);
  expect(l,1);
  l = 0;
  List<Task> tasks = await db.getTaskList();
  if ((tasks[1].title == _title)&&(tasks[1].date == _date)&&(tasks[1].priority == _priority)&&(tasks[1].status == 0)){
   l = 1;
  }
  expect(l,1);


});

}