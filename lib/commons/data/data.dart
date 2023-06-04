import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const ACCESS_TOKEN_KEY = "accessToken";
const REFRESH_TOKEN_KEY = "refreshToken";

const storage = FlutterSecureStorage();

String BASE_URL = Platform.isAndroid ? "http://10.0.2.2:8080" : "http://localhost:8080";