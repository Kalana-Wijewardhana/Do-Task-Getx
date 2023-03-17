import 'package:equatable/equatable.dart';

class Task extends Equatable{
  final String title;
  final int icon;
  final String color;
  final List<dynamic>? todos;

//create constructor for this class
const Task({
  required this.title,
  required this.icon,
  required this.color,
  this.todos,
});

//const class we cant change so, we use new instant using copywith
Task copywith({
  String? title,
  int? icon,
  String? color,
  List<dynamic>? todos,
}) =>Task(
//checking wheter has title ? there is no title using this
  title: title?? this.title, 
  icon: icon?? this.icon, 
  color: color?? this.color,
  todos: todos?? this.todos,
  );
//Task class, fromJson constructor
 factory Task.fromJson(Map<String, dynamic> json) =>Task(
  title: json['title'], 
  icon: json['icon'], 
  color: json['color'], 
  todos: json['todos'],
  );

  Map<String, dynamic> toJson()=>{
  'title': title, 
  'icon':  icon,
  'color': color, 
  'todos': todos,
  };
  
  @override
  // TODO: implement props
  List<Object?> get props => [title,icon,color];
}