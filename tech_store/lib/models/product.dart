import 'package:flutter/material.dart';

enum ProductCategory { mobile, watch }

class Product {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String description;
  final ProductCategory category;
  final String emoji;
  final String imageUrl;
  final Color accentColor;
  final double rating;
  final int reviews;

  const Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.description,
    required this.category,
    required this.emoji,
    required this.imageUrl,
    required this.accentColor,
    required this.rating,
    required this.reviews,
  });
}

final List<Product> allProducts = [
  // ── MOBILES (5) ──
  Product(
    id: 'm1',
    name: 'iPhone 15 Pro',
    brand: 'Apple',
    price: 1199.00,
    description: 'Titanium design, A17 Pro chip, 48MP camera system.',
    category: ProductCategory.mobile,
    emoji: '📱',
    imageUrl: 'https://source.unsplash.com/featured/500x500?iphone',
    accentColor: Color(0xFF4A90D9),
    rating: 4.9,
    reviews: 2341,
  ),
  Product(
    id: 'm2',
    name: 'Galaxy S24 Ultra',
    brand: 'Samsung',
    price: 1299.00,
    description: 'Built-in S Pen, 200MP camera, AI-powered features.',
    category: ProductCategory.mobile,
    emoji: '📲',
    imageUrl: 'https://source.unsplash.com/featured/500x500?samsung-galaxy',
    accentColor: Color(0xFF6C63FF),
    rating: 4.8,
    reviews: 1876,
  ),
  Product(
    id: 'm3',
    name: 'Pixel 8 Pro',
    brand: 'Google',
    price: 999.00,
    description: 'Google AI, 7 years of updates, pro camera.',
    category: ProductCategory.mobile,
    emoji: '🤳',
    imageUrl: 'https://source.unsplash.com/featured/500x500?google-pixel',
    accentColor: Color(0xFF34A853),
    rating: 4.7,
    reviews: 987,
  ),
  Product(
    id: 'm4',
    name: 'OnePlus 12',
    brand: 'OnePlus',
    price: 799.00,
    description: '100W SUPERVOOC charging, Hasselblad cameras.',
    category: ProductCategory.mobile,
    emoji: '📱',
    imageUrl: 'https://source.unsplash.com/featured/500x500?oneplus-phone',
    accentColor: Color(0xFFEB0028),
    rating: 4.6,
    reviews: 654,
  ),
  Product(
    id: 'm5',
    name: 'Xiaomi 14 Ultra',
    brand: 'Xiaomi',
    price: 899.00,
    description: 'Leica optics, 1-inch sensor, 90W wireless charging.',
    category: ProductCategory.mobile,
    emoji: '📷',
    imageUrl: 'https://source.unsplash.com/featured/500x500?xiaomi-phone',
    accentColor: Color(0xFFFF6900),
    rating: 4.7,
    reviews: 432,
  ),

  // ── WATCHES (4) ──
  Product(
    id: 'w1',
    name: 'Apple Watch Ultra 2',
    brand: 'Apple',
    price: 799.00,
    description: 'Rugged titanium, 60hr battery, precision GPS.',
    category: ProductCategory.watch,
    emoji: '⌚',
    imageUrl: 'https://source.unsplash.com/featured/500x500?apple-watch',
    accentColor: Color(0xFF4A90D9),
    rating: 4.9,
    reviews: 1543,
  ),
  Product(
    id: 'w2',
    name: 'Galaxy Watch 6 Classic',
    brand: 'Samsung',
    price: 449.00,
    description: 'Rotating bezel, advanced health tracking, Wear OS.',
    category: ProductCategory.watch,
    emoji: '🕰️',
    imageUrl: 'https://source.unsplash.com/featured/500x500?samsung-watch',
    accentColor: Color(0xFF1B1B2F),
    rating: 4.7,
    reviews: 876,
  ),
  Product(
    id: 'w3',
    name: 'Garmin Fenix 7X',
    brand: 'Garmin',
    price: 699.00,
    description: 'Solar charging, multi-sport GPS, 28-day battery.',
    category: ProductCategory.watch,
    emoji: '🏃',
    imageUrl: 'https://source.unsplash.com/featured/500x500?garmin-watch',
    accentColor: Color(0xFF00B4D8),
    rating: 4.8,
    reviews: 1102,
  ),
  Product(
    id: 'w4',
    name: 'Pixel Watch 2',
    brand: 'Google',
    price: 349.00,
    description: 'Fitbit health features, Google Assistant, 24hr battery.',
    category: ProductCategory.watch,
    emoji: '⌚',
    imageUrl: 'https://source.unsplash.com/featured/500x500?pixel-watch',
    accentColor: Color(0xFF34A853),
    rating: 4.5,
    reviews: 543,
  ),
];
