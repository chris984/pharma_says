import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:pharma_says/pages/models/meds.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

List<Post> parsePost(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var posts = list.map((model) => Post.fromJson(model)).toList();
  return posts;
}

Future<List<Post>> fetchPost() async {
  final response = await http.get(Uri.parse('http://192.168.1.4:8000/api/med'));
  if (response.statusCode == 200) {
    return compute(parsePost, response.body);
  } else {
    throw Exception("Request API Error");
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Post> _posts = List<Post>.empty(growable: true);

  List<Post> _postsDisplay = List<Post>.empty(growable: true);

  bool _isLoading = true;

  @override
  void initState() {
    fetchPost().then((value) {
      setState(() {
        _isLoading = false;
        _posts.addAll(value);
        _postsDisplay = _posts;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Item'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (!_isLoading) {
            return index == 0 ? _searchBar() : _listItem(index - 1);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        itemCount: _postsDisplay.length + 1,
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(hintText: 'Search....'),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            _postsDisplay = _posts.where((post) {
              var postTitle = post.medsName!.toLowerCase();
              return postTitle.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItem(index) {
    return Card(
        child: Padding(
      padding: EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _postsDisplay[index].medsName!.toLowerCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            _postsDisplay[index].medsDescription.toString(),
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ));
  }
}
