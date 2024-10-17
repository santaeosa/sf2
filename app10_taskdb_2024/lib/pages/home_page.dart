import 'package:app10_taskdb_2024/db/db_admin.dart';
import 'package:app10_taskdb_2024/models/task_model.dart';
import 'package:app10_taskdb_2024/widget/my_form_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  showDialogForm() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MyFormWidget();
      },
    ).then((value) {
      setState(() {});
    });
  }

  deleteTask(int taskId) {
    DbAdmin.db.deleteTask(taskId).then(
      (value) {
        if (value > 0) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.indigo,
              content: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Tarea eliminada"),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialogForm();
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: DbAdmin.db.getTask(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData) {
            List<TaskModel> myTasks = snap.data;
            return ListView.builder(
              itemCount: myTasks.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(index.toString()),
                  // confirmDismiss: (DismissDirection direction) async {
                  // return true;
                  //},
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    color: Colors.redAccent,
                  ),
                  onDismissed: (DismissDirection direction) {
                    deleteTask(myTasks[index].id!);
                  },
                  child: ListTile(
                    title: Text(myTasks[index].title),
                    subtitle: Text(myTasks[index].description),
                    trailing: IconButton(
                      onPressed: () {
                        //
                        showDialogForm();
                      },
                      icon: Icon(Icons.edit),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
