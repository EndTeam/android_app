import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ma_for_feip/products/models/product_model.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.loading() = FavoriteLoading;

  const factory FavoriteState.success({
    required final IList<ProductModel> products,
  }) = FavoriteSuccess;

  const factory FavoriteState.error({final String? msg}) = FavoriteError;
}
