import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  // catalog field
  static final cartModel = CartModel._internal();

  CartModel._internal();
  factory CartModel() => cartModel;

  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  // Get Catalog
  CatalogModel get catalog => catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
