import 'package:flutter/material.dart';

import 'package:school_management_system/core/utils/image_constant.dart';
import 'package:school_management_system/core/utils/size_utils.dart';
import 'package:school_management_system/theme/theme_helper.dart';
import 'package:school_management_system/widgets/custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlueA400,
      activeIcon: ImageConstant.imgFrameBlueA400,
      type: BottomBarEnum.Framebluea400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlueGray600,
      activeIcon: ImageConstant.imgFrameBlueGray600,
      type: BottomBarEnum.Framebluegray600,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlueGray60024x24,
      activeIcon: ImageConstant.imgFrameBlueGray60024x24,
      type: BottomBarEnum.Framebluegray60024x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame24x24,
      activeIcon: ImageConstant.imgFrame24x24,
      type: BottomBarEnum.Frame24x24,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray60019,
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(
              0,
              -8,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.blueGray600,
              ),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.blueA400,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Framebluea400,
  Framebluegray600,
  Framebluegray60024x24,
  Frame24x24,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
