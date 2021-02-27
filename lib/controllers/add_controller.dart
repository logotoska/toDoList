import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_list/helpers/databse_helper.dart';
import 'package:to_do_list/models/task_model.dart';
import 'package:to_do_list/screens/add_task_screen.dart';

import '../app_localizations.dart';

class AddController {

    handleDatePicker() async {
    DateTime _date = DateTime.now();
    TextEditingController _dateController = TextEditingController();
    final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');
      _dateController.text = _dateFormatter.format(_date);
    }


    submit( String _title, DateTime _date, String _priority, bool flag) {

    Task task = Task(title: _title, date: _date, priority: _priority);
    if (flag == true) {
      task.status = 0;
      DatabaseHelper.internal().insertTask(task);
    } else {
      task.id = task.id;
      task.status = task.status;
      DatabaseHelper.internal().updateTask(task);
    }
    }

    delete(Task task) {
    DatabaseHelper.internal().deleteTask(task.id);
  }
}
