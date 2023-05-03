import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "dart:convert";
import "package:privatenotes/models/catelog.dart";
import "package:privatenotes/widgets/drawer.dart";

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/data/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    final productData = decodeData["products"];
    CatalogModel.items =
        List.from(productData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const number = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Flutter"),
      ),
      body: CatalogModel.items?.length != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final item = CatalogModel.items![index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GridTile(
                    header: Container(
                        padding: const EdgeInsets.all(12),
                        decoration:
                            const BoxDecoration(color: Colors.orangeAccent),
                        child: Text(item.name!)),
                    footer: Text(item.price.toString()),  
                    child: Image.network(item.image!),
                  ),
                );
              },
              itemCount: CatalogModel.items!.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.orangeAccent,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
