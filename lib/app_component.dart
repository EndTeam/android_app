import 'package:jugger/jugger.dart';
import 'package:ma_for_feip/theme_info.dart';

@singleton
@Component()
abstract class AppComponent {
  ThemeInfo themeInfo();
}
