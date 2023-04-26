enum AppRoutes {
  signIn('signIn'),
  signUp('signUp'),
  splash('splash'),
  home('home'),
  cart('cart'),
  catalog('catalog'),
  favorites('favorites'),
  product('product'),
  profile('profile');

  final String routeName;

  const AppRoutes(this.routeName);
}
