import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../data/models/task_model.dart';
import '../../data/services/api_caller.dart';
import '../../data/utils/urls.dart';

class NewTaskListProvider extends ChangeNotifier {
  bool isSuccess = false;
  bool _getNewTaskInProgress = false;
  String? _errorMessage;
  List<TaskModel> _newTaskList = [];

  bool get getNewTaskInProgress => _getNewTaskInProgress;
  String? get errorMessage => _errorMessage;
  List<TaskModel> get newTaskList => _newTaskList;

  Future<bool> getNewTasks() async {
    _getNewTaskInProgress = true;
    notifyListeners();

    final ApiResponse response = await ApiCaller.getRequest(
      url: urls.newTasklistUrl,
    );
    if (response.isSuccess) {
      List<TaskModel> newTasklist = [];
      for (Map<String, dynamic> jsonData in response.responseData["data"]) {
        _newTaskList.add(TaskModel.fromJson(jsonData));
      }
      _newTaskList = newTasklist;
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage!;
    }
    _getNewTaskInProgress = false;
    notifyListeners();
    return isSuccess;
  }
}
