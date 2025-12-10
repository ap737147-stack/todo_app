class Todo {
  String id;
  String todoText;
  bool isDone;

  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning Exercise', isDone: false),
      Todo(id: '02', todoText: 'Buy Groceries', isDone: false),
      Todo(id: '03', todoText: 'Check Emails', isDone: true),
      Todo(id: '04', todoText: 'Finish Flutter Assignment', isDone: false),
      Todo(id: '05', todoText: 'Call Mom', isDone: false),
      Todo(id: '06', todoText: 'Study DSA for 1 hour', isDone: true),
      Todo(id: '07', todoText: 'Plan weekend schedule', isDone: false),
    ];
  }
}
