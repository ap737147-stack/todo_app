import 'package:flutter/material.dart';
import '../widgets/Todo_item.dart';
import '../models/Todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final todoList = Todo.todoList();
  List<Todo> filteredList = [];

  final TextEditingController controller = TextEditingController();
  final TextEditingController inputController = TextEditingController();
  TextEditingController editController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredList = todoList;
  }

  void runSearch(String text) {
    setState(() {
      filteredList = todoList
          .where(
            (item) => item.todoText.toLowerCase().contains(text.toLowerCase()),
          )
          .toList();
    });
  }

  void ToggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void editTodo(String id) {
    final todo = todoList.firstWhere((item) => item.id == id);
    editController.text = todo.todoText;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Todo"),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  todo.todoText = editController.text.trim();
                });
                Navigator.pop(context);
              },
              child: Text("Save"),
            ),
          ],
        );
      },
    );
  }

  void DeleteTodoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
      runSearch(controller.text);
    });
  }

  void addTodo() {
    if (inputController.text.trim().isEmpty) return;

    setState(() {
      todoList.add(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: inputController.text.trim(),
        ),
      );
      inputController.clear();
      runSearch(controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple.shade400,
                Colors.purpleAccent.shade400,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(Icons.menu, color: Colors.white, size: 28),
            ),
            Text(
              'My Todos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade300,
              Colors.purple.shade200,
              Colors.pink.shade100,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.3, 0.6, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => runSearch(value),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.deepPurple),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurple.withOpacity(0.7),
                              Colors.purpleAccent.withOpacity(0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          "All Todos",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                        child: ListView.builder(
                          itemCount: filteredList.length,
                          itemBuilder: (context, index) {
                            return TodoItem(
                              todo: filteredList[index],
                              onToggle: ToggleTodo,
                              onEdit: editTodo,
                              onDelete: DeleteTodoItem,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: 20,
                            ),
                            padding: EdgeInsets.only(top: 5, left: 10),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.white, Colors.purple.shade50],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.deepPurple.withOpacity(0.3),
                                  offset: Offset(0, 4),
                                  blurRadius: 15,
                                  spreadRadius: 1,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextField(
                              controller: inputController,
                              decoration: InputDecoration(
                                hintText: "Add New Todo's",
                                hintStyle: TextStyle(
                                  color: Colors.deepPurple.shade300,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20, right: 20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.deepPurple.shade400,
                              Colors.purpleAccent.shade400,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple.withOpacity(0.4),
                              offset: Offset(0, 4),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            addTodo();
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(60, 60),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
