import "package:flutter/material.dart";
import "package:todo_list/Widgets/todo_item.dart";
import "package:todo_list/models/todo.dart";

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String avatarUrl =
      "https://instagram.fdel11-3.fna.fbcdn.net/v/t51.2885-19/336510762_1418967655585355_972575268917562585_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fdel11-3.fna.fbcdn.net&_nc_cat=111&_nc_ohc=NFHgp9ftlBcAX-VXumg&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDCVwqG1UDOxl3gCI-8iaz5v-CWG0DdHwF55Hhjz0kkLQ&oe=641E7C66&_nc_sid=8fd12b";

  final todoList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(children: [
              _buildSearch(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 20),
                      child: const Text(
                        "All Todos",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white70),
                      ),
                    ),
                    for (var todoo in todoList)
                      TodoItem(
                        todo: todoo,
                        onTodoChanged: _handelTodoChange,
                        onTodoDelete: _deleteTodoList,
                      ),
                  ],
                ),
              )
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 40, left: 20, right: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.orange,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      controller: _todoController,
                      cursorColor: Colors.orange,
                      decoration: const InputDecoration(
                          hintText: "Add Todo Item List",
                          hintStyle: TextStyle(color: Colors.orange),
                          border: InputBorder.none,
                          focusColor: Colors.indigo),
                      style: const TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 40, left: 20, right: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      minimumSize: const Size(60, 60),
                      elevation: 10,
                    ),
                    onPressed: () { 
                      _addTodoList(_todoController.text);
                    },
                    child: const Text(
                      "+",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Handle TO-DO Change
  void _handelTodoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  // Delete TO-DO List
  void _deleteTodoList(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  // Add TO-DO List
  void _addTodoList(String todo) {
    setState(() {
      todoList.add(
        ToDo(
            id: DateTime.now().microsecondsSinceEpoch.toString(),
            todoText: todo),
      );
    });
    _todoController.clear();
  }

  Container _buildSearch() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            size: 30,
            color: Colors.orange,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
        ],
      ),
    );
  }
}
