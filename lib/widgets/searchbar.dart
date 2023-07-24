import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchQuery = TextEditingController();
  List<Map<String, dynamic>> listings = [];

  Future<void> searchProducts() async {
    final String searchQuery = _searchQuery.text.trim();

    if (searchQuery.isNotEmpty) {
      try {
        final response = await Dio().post(
          'https://dev2be.oruphones.com/api/v1/global/assignment/searchModel',
          data: {
            'searchModel': searchQuery,
          },
        );

        if (response.statusCode == 200) {
          // Handle the response and update the GridView with the searched products.
          // For example, you can setState and update the 'listings' with the fetched data.
          setState(() {
            listings =
                List<Map<String, dynamic>>.from(response.data['listings']);
          });
          print(listings);
        }
      } catch (error) {
        // Handle error
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: const Color(0xFF2c2e43),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          controller: _searchQuery,
          onSubmitted: (_) => searchProducts(),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding:
                  const EdgeInsets.only(left: 12.0, bottom: 6.0, top: 0.0),
              prefixIcon: IconButton(
                icon: const Icon(Icons.search, color: Colors.grey),
                onPressed: () {},
              ),
              hintText: "Search with make and model....",
              hintStyle: const TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }
}
