import 'package:flutter/material.dart';

import 'package:ma_for_feip/models/products/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: _actions(context),
      ),
      body: Column(
        children: [
          Expanded(child: _scrollableContent(context)),
          const Divider(),
          _addToCartBtn(context),
          const Divider(),
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
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 500,
            child: Placeholder(),
          ),
          SizedBox(
            height: 70,
            child: Row(
              children: product.tags
                  .map(
                    (tag) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black12,
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        tag,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Text(
            product.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              Text(
                product.cost.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Цвет',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(width: 8),
              Text(
                'Голубой',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _addToCartBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {
          /* Add product to cart */
        },
        child: SizedBox(
          child: Center(
            child: Text(
              'В корзину',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavBar(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  /* navigate to catalog */
                },
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
            Expanded(
              child: InkWell(
                onTap: () {
                  /* navigate to cart */
                },
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
            ),
          ],
        ),
      );
    });
  }
}
