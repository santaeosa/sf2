import 'package:app10_taskdb_2024/db/db_admin.dart';
import 'package:app10_taskdb_2024/models/task_model.dart';
import 'package:flutter/material.dart';

class MyFormWidget extends StatefulWidget {
  @override
  State<MyFormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool isFinished = false;

  addTask() {
    if (_formKey.currentState!.validate()) {
      TaskModel taskModel = TaskModel(
        title: _titleController.text,
        description: _descriptionController.text,
        status: isFinished.toString(),
      );
      DbAdmin.db.insertTask(taskModel).then((value) {
        if (value > 0) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.indigo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              duration: Duration(milliseconds: 1400),
              content: Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.white),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Tarea registrada con éxito"),
                ],
              ),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Agregar tarea"),
            SizedBox(
              height: 6.0,
            ),
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(hintText: "Título"),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "El campo es obligatorio";
                }

                return null;
              },
            ),
            SizedBox(
              height: 6.0,
            ),
            TextFormField(
              controller: _descriptionController,
              maxLines: 2,
              decoration: InputDecoration(hintText: "Descripción"),
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "El campo es obligatorio";
                }

                return null;
              },
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: [
                Text("Estado: "),
                Checkbox(
                  value: isFinished,
                  onChanged: (value) {
                    isFinished = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancelar"),
                ),
                ElevatedButton(
                  onPressed: () {
                    addTask();
                    
                  },
                  child: Text("Aceptar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
