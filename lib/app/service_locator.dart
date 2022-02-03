// Turn of null-safety by writing the following line
// @dart=2.9
import 'package:get_it/get_it.dart';

import '../screens/home/home_viewmodel.dart';
import '../services/items/items_service.dart';

import '../services/items/items_service_mock.dart';
import '../services/profile/profile_service.dart';

import '../services/profile/profile_service_mock.dart';
import '../screens/profile/profile_viewmodel.dart';
import '../screens/login/login_viewmodel.dart';
import '../services/user/user_repository.dart';
import '../services/authentication/authentication_service.dart';
import '../services/authentication/authentication_service_firebase.dart';

// import '../services/rest.dart';

import '../screens/cart/cart_viewmodel.dart';
import '../services/cart/cart_service.dart';
import '../services/cart/cart_service_mock.dart';
//import '../services/note/note_service_rest.dart';

GetIt locator = GetIt.instance;

void initializeServiceLocator() {
  // Services
  // locator.registerLazySingleton<RestService>(
  //     () => RestService(baseUrl: 'http://192.168.0.5:3000'));

  //TODO To switch between service, comment out the line below accordingly
  //locator.registerLazySingleton<NoteService>(() => NoteServiceMock());
  // locator.registerLazySingleton<NoteService>(() => NoteServiceRest());
  locator.registerLazySingleton<ItemService>(() => ItemsServiceMock());
  locator.registerLazySingleton<ProfileService>(() => ProfileServiceMock());
  locator.registerLazySingleton<CartService>(() => CartServiceMock());
  locator.registerLazySingleton<AuthenticationService>(
      () => AuthenticationServiceFirebase());

  // Viewmodels
  locator.registerLazySingleton<UserRepository>(() => UserRepository());
  locator.registerLazySingleton<HomeViewModel>(() => HomeViewModel());
  locator.registerLazySingleton<ProfileViewModel>(() => ProfileViewModel());
  locator.registerLazySingleton<CartViewModel>(() => CartViewModel());
  locator.registerLazySingleton<LoginViewmodel>(() => LoginViewmodel());
}
