import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/product.dart';
import 'product_card.dart';

class ProductSearchDelegate extends SearchDelegate<Product?> {
  ProductSearchDelegate() : super(searchFieldLabel: 'Search mobiles, watches…');

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF1A1A2E)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: GoogleFonts.dmSans(color: Colors.grey[400], fontSize: 16),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear_rounded),
          onPressed: () => query = '',
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) => _buildSearchResults(context);

  @override
  Widget buildSuggestions(BuildContext context) => _buildSearchResults(context);

  Widget _buildSearchResults(BuildContext context) {
    final results = allProducts
        .where((p) =>
            p.name.toLowerCase().contains(query.toLowerCase()) ||
            p.brand.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (query.isEmpty) {
      return _buildRecentOrEmpty(
          'Search for your favorite gadgets', Icons.search_rounded);
    }
    if (results.isEmpty) {
      return _buildRecentOrEmpty(
          'No results for "$query"', Icons.sentiment_dissatisfied_rounded);
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.72,
      ),
      itemCount: results.length,
      itemBuilder: (context, i) => ProductCard(product: results[i]),
    );
  }

  Widget _buildRecentOrEmpty(String message, IconData icon) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 56, color: Colors.grey[300]),
          const SizedBox(height: 12),
          Text(
            message,
            style: GoogleFonts.dmSans(color: Colors.grey[400], fontSize: 15),
          ),
        ],
      ), 
    );
  }
}
