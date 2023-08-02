import 'package:auto_route/auto_route.dart';

typedef BoolVoidCallback = void Function(bool?);

typedef Routes = ({AutoRoute initialRoute, List<AutoRoute> protectedRuotes, Iterable<AutoRoute> otherRoutes});
