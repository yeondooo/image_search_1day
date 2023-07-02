import 'package:flutter/material.dart';
import 'package:image_search_1day/data/respository/pixabay_photo_repository_impl.dart';
import 'package:image_search_1day/router/router.dart';
import 'package:image_search_1day/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => MainViewModel(PixabayPhotoRepositoryImpl()))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
