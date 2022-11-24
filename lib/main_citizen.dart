
import 'package:flutter/material.dart';
import 'package:sensfix/utils/theme/theme.dart';

import 'flavor_config.dart';
import 'main_common.dart';

void main() {
  // Inject our own configurations
  // Coffee Beans

  mainCommon(
    FlavorConfig()
      ..appTitle = "Sensfix Service"
      ..apiEndpoint = {
        Endpoints.items: "random.api.dev/items",
        Endpoints.details: "random.api.dev/item"
      }
      ..imageLocation = "assets/images/logo_sens.png"
      ..theme= ThemeData(
        fontFamily: "Open Sans",
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary:  SensfixStyles.appcolor,


      ),
    ),
  );
}
