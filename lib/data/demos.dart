import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:fluttercatalog/presentation/catalog/widgets/gallery_widgets.dart';
import 'package:fluttercatalog/routes/router.gr.dart';
import 'package:fluttercatalog/values/values.dart';

enum CatalogDemoCategory {
  roamCaseStudy,
  dropCaseStudy,
  balenciagaCaseStudy,
  profile,
  menu,
  onBoarding,
  messagesAndNotification,
  settings,
  alertDialogs,
  activitiesAndTimeLine,
  login,
  statsAndInformation,
  bottomNavigation,
}

extension CatalogDemoExtension on CatalogDemoCategory {
  String get name => describeEnum(this);

  String displayTitle() {
    switch (this) {
      case CatalogDemoCategory.profile:
        return StringConst.PROFILE;
      case CatalogDemoCategory.menu:
        return StringConst.MENU;
      case CatalogDemoCategory.activitiesAndTimeLine:
        return StringConst.TIMELINES;
      case CatalogDemoCategory.onBoarding:
        return StringConst.ONBOARDING;
      case CatalogDemoCategory.settings:
        return StringConst.SETTINGS;
      case CatalogDemoCategory.alertDialogs:
        return StringConst.ALERT_DIALOGS;
      case CatalogDemoCategory.statsAndInformation:
        return StringConst.STATS_AND_INFORMATION;
      case CatalogDemoCategory.bottomNavigation:
        return StringConst.BOTTOM_NAVIGATION;
      case CatalogDemoCategory.login:
        return StringConst.LOGIN;
      case CatalogDemoCategory.messagesAndNotification:
        return StringConst.MESSAGES_AND_NOTIFICATION;
    }
    return null;
  }
}

class CatalogDemo {
  const CatalogDemo({
    @required this.title,
    @required this.category,
    @required this.subtitle,
    // Parameters below are required for non-study demos.
    this.slug,
    this.routeName,
    this.icon,
  })  : assert(title != null),
        assert(category != null),
        assert(subtitle != null);

  final String title;
  final CatalogDemoCategory category;
  final String subtitle;
  final String slug;
  final String routeName;
  final IconData icon;

  String get describe => '$title@${category.name}';
}

List<CategoryListItem> categoryList() {
  return [
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.profile,
      ),
      category: CatalogDemoCategory.profile,
      imageString: ImagePath.PROFILE,
      demos: profileDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.activitiesAndTimeLine,
      ),
      category: CatalogDemoCategory.activitiesAndTimeLine,
      imageString: ImagePath.LIST,
      demos: activitiesAndTimelineDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.login,
      ),
      category: CatalogDemoCategory.login,
      imageString: ImagePath.LOGIN,
      demos: loginDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.menu,
      ),
      category: CatalogDemoCategory.menu,
      imageString: ImagePath.MENU,
      demos: menuDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.onBoarding,
      ),
      category: CatalogDemoCategory.onBoarding,
      imageString: ImagePath.ONBOARDING,
      demos: onBoardingDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.alertDialogs,
      ),
      category: CatalogDemoCategory.alertDialogs,
      imageString: ImagePath.ALERT_DIALOGS,
      demos: alertDialogsDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.messagesAndNotification,
      ),
      category: CatalogDemoCategory.messagesAndNotification,
      imageString: ImagePath.STATS_INFORMATION,
      demos: messagesAndNotificationsDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.statsAndInformation,
      ),
      category: CatalogDemoCategory.statsAndInformation,
      imageString: ImagePath.STATS_INFORMATION,
      demos: statsAndInformationDemos(),
      initiallyExpanded: false,
    ),
    CategoryListItem(
      key: const PageStorageKey<CatalogDemoCategory>(
        CatalogDemoCategory.settings,
      ),
      category: CatalogDemoCategory.settings,
      imageString: ImagePath.SETTINGS,
      demos: settingsDemos(),
      initiallyExpanded: false,
    ),
  ];
}

List<CatalogDemo> caseStudyDemos() {
  return [
    CatalogDemo(
      title: "Drop Case Study",
      icon: Icons.person,
      slug: 'drop',
      subtitle: "Online store with the newest drops",
      category: CatalogDemoCategory.dropCaseStudy,
      routeName: Routes.dropSplashScreen,
    ),
    CatalogDemo(
      title: "Roam Case Study",
      icon: Icons.person,
      slug: 'roam',
      subtitle: "UI/UX Case study for a travel advisory app",
      category: CatalogDemoCategory.roamCaseStudy,
      routeName: Routes.roamSplashScreen,
    ),
    CatalogDemo(
      title: "Balenciga",
      icon: Icons.person,
      slug: 'balenciga',
      subtitle: StringConst.COMING_SOON,
      category: CatalogDemoCategory.balenciagaCaseStudy,
//      routeName: Routes.balenciagaSplashScreen,
    ),
  ];
}

List<CatalogDemo> profileDemos() {
  return [
    CatalogDemo(
      title: "Profile Design 1",
      icon: FeatherIcons.user,
      slug: 'profile-design-1',
      subtitle: StringConst.PROFILE_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile1Screen,
    ),
    CatalogDemo(
      title: "Profile Design 2",
      icon: FeatherIcons.users,
      slug: 'profile-design-2',
      subtitle: StringConst.PROFILE_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile2Screen,
    ),
    CatalogDemo(
      title: "Profile Design 3",
      icon: FeatherIcons.userCheck,
      slug: 'profile-design-3',
      subtitle: StringConst.PROFILE_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile3Screen,
    ),
    CatalogDemo(
      title: "Profile Design 4",
      icon: FeatherIcons.userPlus,
      slug: 'profile-design-4',
      subtitle: StringConst.PROFILE_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.profile4Screen,
    ),
  ];
}

List<CatalogDemo> activitiesAndTimelineDemos() {
  return [
    CatalogDemo(
      title: "TimeLine 1",
      icon: FeatherIcons.clock,
      slug: 'timeline-1',
      subtitle: StringConst.ACTIVITIES_SUBTITLE,
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.timeLine,
    ),
    CatalogDemo(
      title: "Activity 1",
      icon: FeatherIcons.activity,
      slug: 'activity-1',
      subtitle: StringConst.ACTIVITIES_SUBTITLE,
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen,
    ),
    CatalogDemo(
      title: "Activity 2",
      icon: FeatherIcons.crosshair,
      slug: 'activity-2',
      subtitle: StringConst.ACTIVITIES_SUBTITLE,
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen2,
    ),
    CatalogDemo(
      title: "Activity 3",
      icon: FeatherIcons.codesandbox,
      slug: 'activity-3',
      subtitle: StringConst.ACTIVITIES_SUBTITLE,
      category: CatalogDemoCategory.activitiesAndTimeLine,
      routeName: Routes.activityScreen3,
    ),
  ];
}

List<CatalogDemo> messagesAndNotificationsDemos() {
  return [
    CatalogDemo(
      title: StringConst.COMING_SOON,
      icon: FeatherIcons.messageCircle,
      slug: 'messages',
      subtitle: "",
      category: CatalogDemoCategory.messagesAndNotification,
      routeName: Routes.messagesScreen,
    ),
//    CatalogDemo(
//      title: "Notification",
//      icon: FeatherIcons.bell,
//      slug: 'Notification',
//      subtitle: "Notifications Screen Design",
//      category: CatalogDemoCategory.messagesAndNotification,
//      routeName: Routes.notificationsScreen,
//    ),
  ];
}

List<CatalogDemo> menuDemos() {
  return [
    CatalogDemo(
      title: "Menu Design 1",
      icon: FeatherIcons.menu,
      slug: 'menu-design-1',
      subtitle: StringConst.MENU_SUBTITLE,
      category: CatalogDemoCategory.menu,
      routeName: Routes.menuScreen1,
    ),
    CatalogDemo(
      title: "Menu Design 2",
      icon: FeatherIcons.gift,
      slug: 'menu-design-2',
      subtitle: StringConst.MENU_SUBTITLE,
      category: CatalogDemoCategory.menu,
      routeName: Routes.menuScreen2,
    ),
    CatalogDemo(
      title: "Menu Design 3",
      icon: FeatherIcons.globe,
      slug: 'menu-design-3',
      subtitle: StringConst.MENU_SUBTITLE,
      category: CatalogDemoCategory.menu,
      routeName: Routes.menuScreen3,
    ),
    CatalogDemo(
      title: "Menu Design 4",
      icon: FeatherIcons.loader,
      slug: 'menu-design-4',
      subtitle: StringConst.MENU_SUBTITLE,
      category: CatalogDemoCategory.menu,
      routeName: Routes.menuScreen4,
    ),
  ];
}

List<CatalogDemo> onBoardingDemos() {
  return [
    CatalogDemo(
      title: "OnBoarding Design 1",
      icon: FeatherIcons.power,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen1,
    ),
    CatalogDemo(
      title: "OnBoarding Design 2",
      icon: FeatherIcons.pocket,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen2,
    ),
    CatalogDemo(
      title: "OnBoarding Design 3",
      icon: FeatherIcons.sunrise,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen3,
    ),
    CatalogDemo(
      title: "OnBoarding Design 4",
      icon: FeatherIcons.command,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen4,
    ),
    CatalogDemo(
      title: "OnBoarding Design 5",
      icon: FeatherIcons.smartphone,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen5,
    ),
    CatalogDemo(
      title: "OnBoarding Design 6",
      icon: FeatherIcons.layout,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen6,
    ),
    CatalogDemo(
      title: "OnBoarding Design 7",
      icon: FeatherIcons.package,
      slug: 'onBoarding-design',
      subtitle: StringConst.ONBOARDING_SUBTITLE,
      category: CatalogDemoCategory.onBoarding,
      routeName: Routes.onBoardingScreen7,
    ),
  ];
}

List<CatalogDemo> alertDialogsDemos() {
  return [
    CatalogDemo(
      title: "Alert Dialog 1",
      icon: FeatherIcons.alertCircle,
      slug: 'alert-dialog-1',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.alertDialog1,
    ),
    CatalogDemo(
      title: "Alert Dialog 2",
      icon: FeatherIcons.alertOctagon,
      slug: 'alert-dialog-2',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.alertDialog2,
    ),
    CatalogDemo(
      title: "Alert Dialog 3",
      icon: FeatherIcons.alertTriangle,
      slug: 'alert-dialog-3',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.alertDialog3,
    ),
    CatalogDemo(
      title: "Alert Dialog 4",
      icon: FeatherIcons.xOctagon,
      slug: 'alert-dialog-4',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.alertDialog4,
    ),
    CatalogDemo(
      title: "Bottom Sheet 1",
      icon: FeatherIcons.box,
      slug: 'bottom-sheet-1',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.bottomSheet1,
    ),
    CatalogDemo(
      title: "Bottom Sheet 2",
      icon: FeatherIcons.package,
      slug: 'bottom-sheet-2',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.bottomSheet2,
    ),
    CatalogDemo(
      title: "Bottom Sheet 3",
      icon: FeatherIcons.codesandbox,
      slug: 'bottom-sheet-3',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.bottomSheet3,
    ),
    CatalogDemo(
      title: "Bottom Sheet 4",
      icon: FeatherIcons.star,
      slug: 'bottom-sheet-4',
      subtitle: StringConst.ALERT_DIALOGS_SUBTITLE,
      category: CatalogDemoCategory.alertDialogs,
      routeName: Routes.bottomSheet4,
    ),
  ];
}

List<CatalogDemo> loginDemos() {
  return [
    CatalogDemo(
      title: "Login Design 1",
      icon: FeatherIcons.key,
      slug: 'login-design-1',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen1,
    ),
    CatalogDemo(
      title: "Login Design 2",
      icon: FeatherIcons.logIn,
      slug: 'login-design-2',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen2,
    ),
    CatalogDemo(
      title: "Login Design 3",
      icon: FeatherIcons.logOut,
      slug: 'login-design-3',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen3,
    ),
    CatalogDemo(
      title: "Login Design 4",
      icon: FeatherIcons.award,
      slug: 'login-design-4',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen4,
    ),
    CatalogDemo(
      title: "Login Design 5",
      icon: FeatherIcons.aperture,
      slug: 'login-design-5',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen5,
    ),
    CatalogDemo(
      title: "Login Design 6",
      icon: FeatherIcons.check,
      slug: 'login-design-6',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen6,
    ),
    CatalogDemo(
      title: "Login Design 7",
      icon: FeatherIcons.heart,
      slug: 'login-design-7',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.registerScreen7,
    ),
    CatalogDemo(
      title: "Login Design 8",
      icon: FeatherIcons.anchor,
      slug: 'login-design-8',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen8,
    ),
    CatalogDemo(
      title: "Login Design 9",
      icon: FeatherIcons.loader,
      slug: 'login-design-9',
      subtitle: StringConst.LOGIN_SUBTITLE,
      category: CatalogDemoCategory.profile,
      routeName: Routes.loginScreen9,
    ),
  ];
}

List<CatalogDemo> settingsDemos() {
  return [
    CatalogDemo(
      title: StringConst.COMING_SOON,
      icon: FeatherIcons.sliders,
      slug: 'settings-design',
      subtitle: "",
      category: CatalogDemoCategory.settings,
//      routeName: Routes.menuScreen1,
    ),
  ];
}

List<CatalogDemo> statsAndInformationDemos() {
  return [
    CatalogDemo(
      title: StringConst.COMING_SOON,
      icon: FeatherIcons.barChart2,
      slug: 'stats-design',
      subtitle: "",
      category: CatalogDemoCategory.statsAndInformation,
//      routeName: Routes.menuScreen1,
    ),
  ];
}
