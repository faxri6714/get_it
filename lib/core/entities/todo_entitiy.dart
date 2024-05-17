class TodoEntitiy{
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
   bool isDone;

  TodoEntitiy( {required this.id, required this.title, required this.description, required this.createdAt, required this.isDone});

  factory TodoEntitiy.empty(){
    return TodoEntitiy(title: "Test", description: "Lorem ipsum", createdAt: DateTime.now(), isDone: false, id: DateTime.now().microsecondsSinceEpoch.toString());
  }
}