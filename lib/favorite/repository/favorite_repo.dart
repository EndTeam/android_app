import 'package:ma_for_feip/products/models/product_model.dart';

abstract class FavoriteRepository {
  Future<ProductModel> loadFavorites();
  Future<void> removeFavorite();
}