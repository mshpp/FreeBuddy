import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:the_last_bluetooth/the_last_bluetooth.dart';

import 'headphones/cubit/headphones_connection_cubit.dart';
import 'headphones/cubit/headphones_mock_cubit.dart';

/// Gets real or fake connection cubit
HeadphonesConnectionCubit getHeadphonesCubit() => (!kIsWeb &&
        Platform.isAndroid &&
        !const bool.fromEnvironment('USE_HEADPHONES_MOCK'))
    ? HeadphonesConnectionCubit(bluetooth: TheLastBluetooth.instance)
    : HeadphonesMockCubit();
