part of '_index.dart';

final nav = NavigationBuilder.create(
  initialLocation: Routes.login,
  // initialLocation: Prov.auth.st.rxUser.st == null ? Routes.login : Routes.productList,
  // initialLocation: Prov.auth.st.rxUser.st == null ? Routes.login : Routes.register,
  routes: RouteMap.data,
);
