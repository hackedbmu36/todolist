class ToDo
{
  String? id;
  String todoText;
  bool isDone;

  ToDo({
    this.id,
    required this.todoText,
    this.isDone=false
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01',todoText:'Practice Maths', isDone:true),
      ToDo(id: '02',todoText:'Do Dishes', ),
      ToDo(id: '03',todoText:'Physics DPP', isDone:true),
      

    ];
  }
}