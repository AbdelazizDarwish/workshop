import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/data/data_provider/local/cache_helper.dart';
import 'package:workshop/data/data_provider/remote/dio_helper.dart';
import 'package:workshop/presentation/screens/login_screen.dart';
import 'package:workshop/presentation/screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ODC',
          theme: ThemeData.light(),
          home: RegisterScreen(),
        );
      },
    );
  }
}
