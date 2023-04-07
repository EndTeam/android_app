import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_for_feip/extensions/cost.dart';
import 'package:ma_for_feip/main.dart';
import 'package:ma_for_feip/models/products/product.dart';
import 'package:ma_for_feip/providers/product_page/product_page_provider.dart';
import 'package:ma_for_feip/views/widgets/color_picker.dart';
import 'package:ma_for_feip/views/widgets/size_picker.dart';

class ProductPage extends StatelessWidget {
  final _theme = appComponent.themeInfo();

  ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _scrollableContent(context)),
          Container(
            width: double.infinity,
            height: _theme.verticalPadding,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color(0x1a9e9e9e),
                  Color(0x009E9E9E),
                ],
                stops: [0, 1],
              ),
            ),
          ),
          _addToCartBtn(context),
          const Divider(height: 1),
          _bottomNavBar(context),
        ],
      ),
    );
  }

  Widget _scrollableContent(BuildContext context) {
    return BlocSelector<ProductPageProvider, ProductPageState, Product>(
        selector: (state) => state.product,
        builder: (context, prod) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: _theme.horizontalPadding),
            child: ListView(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: _imageAndNav(context),
                ),
                _bodyDivider(),
                SizedBox(
                  height: 25,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final tag = prod.tags[index];
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_theme.mediumRadius),
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: _theme.horizontalPadding,
                          vertical: _theme.verticalPadding,
                        ),
                        child: Text(
                          tag,
                          style: _theme.textTheme.labelMedium,
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => SizedBox(width: _theme.inListSeparator),
                    itemCount: prod.tags.length,
                  ),
                ),
                _bodyDivider(),
                Text(
                  prod.name,
                  style: _theme.textTheme.titleLarge?.copyWith(fontFamily: 'Cormorant', fontSize: 35),
                ),
                _bodyDivider(),
                Row(
                  children: [
                    Text(
                      prod.cost.getSpacingString(),
                      style: _theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: _theme.inListSeparator),
                    if (prod.oldCost != null)
                      Text(
                        prod.oldCost!.getSpacingString(),
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
                _bodyDivider(),
                ..._colorPicker(context),
                _bodyDivider(),
                ..._sizePicker(context),
                _bodyDivider(),
                InkWell(
                  onTap: () {
                    /* Open dialog with table */
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.straighten),
                      SizedBox(width: _theme.inListSeparator),
                      Text(
                        'Таблица размеров',
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                _bodyDivider(),
                _description(context),
                _bodyDivider(),
                // ignore: prefer_const_constructors
                Placeholder(
                  child: const SizedBox(height: 400, child: Center(child: Text('Вам может понравится'))),
                )
              ],
            ),
          );
        });
  }

  Widget _imageAndNav(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: Stack(
        children: [
          const Placeholder(),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(Icons.arrow_back, size: 32),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  /* Subscribe */
                },
                icon: const Icon(
                  Icons.favorite,
                  size: 32,
                ),
              ),
            ),
          ),
          BlocSelector<ProductPageProvider, ProductPageState, bool>(
            selector: (state) => state.product.isNew,
            builder: (context, isNew) {
              return isNew
                  ? Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        color: const Color(0xFFCDCFD6),
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                        child: Text(
                          'NEW',
                          style: _theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                        ),
                      ),
                    )
                  : Container();
            },
          ),
        ],
      ), // Images
    );
  }

  Widget _bodyDivider() => SizedBox(height: _theme.elementsGap);

  List<Widget> _colorPicker(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            'Цвет',
            style: _theme.textTheme.bodyLarge?.copyWith(color: Colors.grey),
          ),
          SizedBox(width: _theme.inListSeparator),
          BlocSelector<ProductPageProvider, ProductPageState, String>(
              selector: (state) => state.pickedColor.name,
              builder: (context, colorName) {
                return Text(
                  colorName,
                  style: _theme.textTheme.bodyLarge,
                );
              }),
        ],
      ),
      _bodyDivider(),
      SizedBox(
        height: 40,
        child: BlocBuilder<ProductPageProvider, ProductPageState>(
          builder: (context, state) => ColorPicker(
            colors: state.product.colors,
            selected: state.product.colors.indexOf(state.pickedColor),
            onColorPicked: context.read<ProductPageProvider>().pickColor,
          ),
        ),
      )
    ];
  }

  List<Widget> _sizePicker(BuildContext context) {
    return [
      Text(
        'Выберите размер',
        style: _theme.textTheme.bodyLarge,
      ),
      _bodyDivider(),
      SizedBox(
        height: 70,
        child: BlocBuilder<ProductPageProvider, ProductPageState>(
          builder: (_, state) => SizePicker(
            sizes: state.product.sizes,
            selected: state.product.sizes.indexOf(state.pickedSize),
            onSizePicked: context.read<ProductPageProvider>().pickSize,
          ),
        ),
      ),
    ];
  }

  Widget _description(BuildContext context) {
    return BlocSelector<ProductPageProvider, ProductPageState, List<String>>(
      selector: (state) => state.product.description,
      builder: (context, desc) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var d in desc)
              Padding(
                padding: EdgeInsets.symmetric(vertical: _theme.verticalPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFA1948C),
                        borderRadius: BorderRadius.circular(_theme.smallRadius),
                      ),
                      height: 5,
                      width: 5,
                      child: const SizedBox.expand(),
                    ),
                    SizedBox(width: _theme.inListSeparator),
                    Text(
                      d,
                      style: _theme.textTheme.bodyLarge,
                    )
                  ],
                ),
              )
          ],
        );
      },
    );
  }

  Widget _addToCartBtn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF32302F),
          shape: const RoundedRectangleBorder(),
        ),
        onPressed: () {
          /* Add product to cart */
        },
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: _theme.verticalPadding),
            child: Text(
              'В корзину',
              style: _theme.textTheme.labelLarge?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final halfWidth = constraints.maxWidth / 2;
      return Row(
        children: [
          InkWell(
            onTap: () {
              /* navigate to catalog */
            },
            child: SizedBox(
              width: halfWidth,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _theme.verticalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.manage_search),
                    Text(
                      'Каталог',
                      style: _theme.textTheme.labelSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
          InkWell(
              onTap: () {
                /* navigate to cart */
              },
              child: SizedBox(
                width: halfWidth,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: _theme.verticalPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_bag_outlined),
                      Text(
                        'Корзина',
                        style: _theme.textTheme.labelSmall,
                      )
                    ],
                  ),
                ),
              )),
        ],
      );
    });
  }
}
