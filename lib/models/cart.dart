import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;
  // Catalog Field
  late CatalogModel _catalog;

  // Collection of Ids - store Ids of each item
  final List<int> _itemsIds = [];

  // Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemsIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add items

  void add(Item item) {
    _itemsIds.add(item.id);
  }

  // Remove items

  void remove(Item item) {
    _itemsIds.remove(item.id);
  }
}
