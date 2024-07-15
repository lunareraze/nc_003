part of '_index.dart';

final nav = NavigationBuilder.create(
  // initialLocation: Routes.home,
  initialLocation: Prov.auth.st.rxUser.st == null ? Routes.login : Routes.productList,
  routes: RouteMap.data,
);
