// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:origin_design_system/assets.dart';
import 'package:origin_design_system/origin_design_system.dart';
import 'package:origin_design_system/src/atoms/colors.dart';
import 'package:origin_design_system/src/atoms/origin_logo.dart';
import 'package:origin_design_system/src/atoms/spacing.dart';
import 'package:origin_design_system/src/molecules/origin_app_bar.dart';
import 'package:origin_design_system/src/widgetbook/usecases/atoms/origin_card_usecase.dart';
import 'package:origin_design_system/src/widgetbook/usecases/atoms/origin_icon_usecase.dart';
import 'package:origin_design_system/src/widgetbook/usecases/atoms/origin_logo_usecase.dart';
import 'package:origin_design_system/src/widgetbook/usecases/molecules/origin_app_bar_usecase.dart';
import 'package:origin_design_system/src/widgetbook/usecases/molecules/origin_text_form_field.dart';
import 'package:origin_design_system/src/widgetbook/usecases/organisms/origin_page_usecase.dart';
import 'package:origin_design_system/src/widgetbook/widgetbook.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Origin Design System',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Dark',
          data: getDarkTheme(),
        ),
      ],
      devices: [
        Device(
          name: 'Desktop 720p',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 720.0,
              width: 1280.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
        Device(
          name: 'Desktop 1080p',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1080.0,
              width: 1920.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
        Device(
          name: 'Desktop 4k',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2160.0,
              width: 3840.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.desktop,
        ),
        Device(
          name: 'iPhone 12',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 2532.0,
              width: 1170.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 6',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1334.0,
              width: 750.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'iPhone 8 Plus',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1920.0,
              width: 1080.0,
            ),
            scaleFactor: 3.0,
          ),
          type: DeviceType.mobile,
        ),
      ],
      frames: [
        WidgetbookFrame(
          name: 'Widgetbook',
          allowsDevices: true,
        ),
        WidgetbookFrame(
          name: 'None',
          allowsDevices: false,
        ),
      ],
      textScaleFactors: [
        1.0,
        2.0,
        3.0,
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'molecules',
              widgets: [
                WidgetbookComponent(
                  name: 'OriginAppBar',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originAppBar(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'OriginTextField',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originTextField(context),
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              folders: [],
              isExpanded: true,
            ),
            WidgetbookFolder(
              name: 'organisms',
              widgets: [
                WidgetbookComponent(
                  name: 'OriginPage',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originPage(context),
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              folders: [],
              isExpanded: true,
            ),
            WidgetbookFolder(
              name: 'atoms',
              widgets: [
                WidgetbookComponent(
                  name: 'OriginCard',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originCard(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'OriginLogo',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originLogo(context),
                    ),
                  ],
                  isExpanded: true,
                ),
                WidgetbookComponent(
                  name: 'OriginIcon',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => originIcon(context),
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              folders: [],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
      scaffoldBuilder: scaffoldBuilder,
    );
  }
}
