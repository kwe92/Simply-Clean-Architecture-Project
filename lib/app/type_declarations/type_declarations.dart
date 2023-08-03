import 'package:auto_route/auto_route.dart';

typedef BoolVoidCallback = void Function(bool?);

typedef Routes = ({AutoRoute initialRoute, List<AutoRoute> protectedRuotes, Iterable<AutoRoute> otherRoutes});


// Type Aliases | interfaces | the shapes you desire

//   - consolidate your type aliases in one module
//   - you may need to use the same type alias throughout your program
//   - makes your code look cleaner as you do not have type aliases
//     defined randomly throughout your program