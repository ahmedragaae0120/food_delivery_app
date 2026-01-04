// import 'package:flutter/material.dart';
// import 'package:food_delivery_app/core/routes/routes.dart';

// class RouteGenerator {
//   static Route<dynamic>? getRoute(RouteSettings settings) {
//     final arg = settings.arguments;
//     switch (settings.name) {
//       case Routes.login:
//         return MaterialPageRoute(
//           builder: (context) => BlocProvider(
//             create: (context) => serviceLocator<LoginCubit>(),
//             child: const LoginScreen(),
//           ),
//         );

//       case Routes.register:
//         return MaterialPageRoute(builder: (_) => const RegisterScreen());
//       case Routes.forgetPassword:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider(
//             create: (context) => serviceLocator<ForgotPasswordCubit>(),
//             child: const ForgetPasswordScreen(),
//           ),
//         );
//       case Routes.emailVerification:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider.value(
//             value: arg as ForgotPasswordCubit,
//             child: const EmailVerificationScreen(),
//           ),
//         );
//       case Routes.resetPassword:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider.value(
//             value: arg as ForgotPasswordCubit,
//             child: ResetPasswordScreen(),
//           ),
//         );
//       case Routes.appSection:
//         return MaterialPageRoute(
//           builder: (_) => MultiBlocProvider(
//             providers: [
//               BlocProvider(create: (context) => serviceLocator<CartCubit>()),
//             ],
//             child: const AppSection(),
//           ),
//         );
//       case Routes.home:
//         return MaterialPageRoute(builder: (_) => const HomeScreen());
//       case Routes.successPage:
//         return MaterialPageRoute(builder: (_) => const SuccessPage());
//       case Routes.occasion:
//         return MaterialPageRoute(builder: (_) => const OccasionScreen());
//       case Routes.bestSeller:
//         return MaterialPageRoute(builder: (_) => const BestSellerScreen());
//       case Routes.order:
//         return MaterialPageRoute(builder: (_) => const OrdersScreen());
//       case Routes.categories:
//         return MaterialPageRoute(builder: (_) => const CategoriesScreen());
//       case Routes.changePassword:
//         return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
//       case Routes.checkout:
//         final price = settings.arguments as num;
//         return MaterialPageRoute(builder: (_) => CheckoutScreen(price: price));
//       case Routes.mainProfile:
//         return MaterialPageRoute(builder: (_) => const ProfileScreen());
//       case Routes.productDetails:
//         final product = settings.arguments as ProductDetailsModel;
//         return MaterialPageRoute(
//           builder: (_) => ProductDetails(product: product),
//         );
//       case Routes.editProfile:
//         return MaterialPageRoute(
//           builder: (_) =>
//               EditProfileScreen(userData: arg as EditProfileRequest),
//         );
//       case Routes.address:
//         return MaterialPageRoute(builder: (_) => AddressScreen());
//       // return MaterialPageRoute(builder: (_) =>
//       //     ProductDetails(
//       //       product: product,
//       //     ));
//       case Routes.savedAddress:
//         return MaterialPageRoute(builder: (_) => SavedAddress());
//       case Routes.aboutApp:
//         return MaterialPageRoute(builder: (_) => AboutAppScreen());
//       case Routes.termsAndCondition:
//         return MaterialPageRoute(
//           builder: (_) => const TermsAndConditionScreen(),
//         );

//       case Routes.search:
//         return MaterialPageRoute(
//           builder: (_) => BlocProvider<SearchBloc>(
//             create: (context) => serviceLocator<SearchBloc>(),
//             child: const SearchScreen(),
//           ),
//         );

//       case Routes.notification:
//         return MaterialPageRoute(builder: (_) => NotificationScreen());
//       // return MaterialPageRoute(builder: (_) =>
//       //     ProductDetails(
//       //       product: product,
//       //     ));
//       default:
//         return _undefinedRoute();
//     }
//   }

//   static Route<dynamic> _undefinedRoute() {
//     return MaterialPageRoute(
//       builder: (_) => Scaffold(
//         appBar: AppBar(title: Text('No Route Found')),
//         body: const Center(child: Text('No Route Found')),
//       ),
//     );
//   }
// }
