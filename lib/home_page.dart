import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Addidas', 'Nike', 'Bata'];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromRGBO(185, 183, 183, 1),
        ),
        borderRadius: BorderRadius.circular(50));
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Shoes\nCollection',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filters.length,
            itemBuilder: (context, index) {
              final filter = filters[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      selectedFilter = filter;
                    });
                  },
                  child: Chip(
                    backgroundColor: selectedFilter == filter
                        ? Theme.of(context).colorScheme.primary
                        : const Color.fromRGBO(245, 247, 249, 1),
                    side: const BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 1)),
                    label: Text(filter),
                    labelStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
