import 'package:flutter/material.dart';

class Helppage extends StatelessWidget {
  const Helppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Help',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

const List<Entry> data = <Entry>[
  Entry(
    'What is Pharma-says? ',
    <Entry>[
      Entry('Section A1'),
      Entry('Item'),
    ],
  ),
  Entry(
    'How to Register ?',
    <Entry>[
      Entry('Section B0'),
      Entry('Item B1'),
    ],
  ),
  Entry(
    'Why cant I sign in?',
    <Entry>[
      Entry('Section B0'),
      Entry('Item B1'),
    ],
  ),
  Entry(
    'Where can I find medicines information?',
    <Entry>[
      Entry('Section B0'),
      Entry('Item B1'),
    ],
  ),
  Entry(
    'How to use text-scanner?',
    <Entry>[
      Entry('Section B0'),
      Entry('Item B1'),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  @override
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
