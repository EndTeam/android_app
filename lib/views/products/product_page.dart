import 'package:flutter/material.dart';
import 'package:ma_for_feip/extensions/cost.dart';
import 'package:ma_for_feip/models/products/product.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: _actions(context),
      ),
      body: Column(
        children: [
          Expanded(child: _scrollableContent(context)),
          Container(
            width: double.infinity,
            height: 8,
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

  List<Widget> _actions(BuildContext context) {
    return [
      IconButton(
        onPressed: Navigator.of(context).pop,
        icon: const Icon(Icons.arrow_back),
      ),
      const Spacer(),
      IconButton(
        onPressed: () {
          /* Subscribe */
        },
        icon: const Icon(Icons.favorite),
      )
    ];
  }

  Widget _scrollableContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 500,
            child: Placeholder(),
          ),
          _bodyDivider(),
          SizedBox(
            height: 25,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final tag = product.tags[index];
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.black12,
                      width: 1,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    tag,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
              itemCount: product.tags.length,
            ),
          ),
          _bodyDivider(),
          Text(
            product.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          _bodyDivider(),
          Row(
            children: [
              Text(
                product.cost.getSpacingString(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
              const SizedBox(width: 8),
              Text(
                product.oldCost.getSpacingString(),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
                const SizedBox(width: 8),
                Text(
                  'Таблица размеров',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
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
          ..._description(context),
          _bodyDivider(),
          // ignore: prefer_const_constructors
          Placeholder(
            child: const SizedBox(height: 400, child: Center(child: Text('Вам может понравится'))),
          )
        ],
      ),
    );
  }

  Widget _bodyDivider() => const SizedBox(height: 16);

  List<Widget> _colorPicker(BuildContext context) {
    return [
      Row(
        children: [
          Text(
            'Цвет',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
          ),
          const SizedBox(width: 8),
          Text(
            'Голубой',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
      _bodyDivider(),
      SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final color = product.colors[index];
            return Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              padding: const EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: color,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
          itemCount: product.colors.length,
        ),
      )
    ];
  }

  List<Widget> _sizePicker(BuildContext context) {
    return [
      Text(
        'Выберите размер',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      _bodyDivider(),
      SizedBox(
        height: 70,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) => _bodyDivider(),
          itemBuilder: (BuildContext context, int index) {
            final size = product.sizes[index];
            return Card(
              surfaceTintColor: Colors.white,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(size.size),
                    Text('(${size.minSize}-${size.maxSize})'),
                  ],
                ),
              ),
            );
          },
          itemCount: product.sizes.length,
        ),
      )
    ];
  }

  List<Widget> _description(BuildContext context) {
    return [
      for (var d in product.description)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFA1948C),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 5,
                width: 5,
                child: const SizedBox.expand(),
              ),
              const SizedBox(width: 8),
              Text(
                d,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        )
    ];
  }

  Widget _addToCartBtn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xFF32302F), shape: const RoundedRectangleBorder()),
        onPressed: () {
          /* Add product to cart */
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'В корзину',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
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
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.manage_search),
                    Text(
                      'Каталог',
                      style: Theme.of(context).textTheme.labelSmall,
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
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.shopping_bag_outlined),
                      Text(
                        'Корзина',
                        style: Theme.of(context).textTheme.labelSmall,
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
