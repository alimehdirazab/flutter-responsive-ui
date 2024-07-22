import 'dart:io';

class ResponsiveLayout {
  // Screen width and height
  final double screenWidth;
  final double screenHeight;
  final bool isWeb;

  // Responsive dimensions
  double topPadding;
  double containerSize;
  double fontLabel;
  double fontButton;
  double fontTitle;
  double iconSize;
  double buttonContainerWidth;
  double bannerHeight;
  double bannerWidth;
  double appBarIconSize;
  double appBarFontSize;
  double appBarImageHeight;

  ResponsiveLayout({
    required this.screenWidth,
    required this.screenHeight,
    this.isWeb = false,
  })  : topPadding = 180,
        containerSize = 700,
        fontLabel = 20,
        fontButton = 20,
        fontTitle = 50,
        iconSize = 14,
        buttonContainerWidth = 250,
        bannerHeight = 70,
        bannerWidth = 300,
        appBarIconSize = 20,
        appBarFontSize = 20,
        appBarImageHeight = 65 {
    _calculateDimensions();
  }

  void _calculateDimensions() {
    // Web logic
    if (isWeb) {
      topPadding = 200;
      if (screenWidth > 980) {
        fontLabel = 16;
        fontButton = 16;
        fontTitle = 22;
        containerSize = 700;
        buttonContainerWidth = 200;
        bannerWidth = 300;
      } else if (screenWidth > 585 && screenWidth <= 980) {
        fontLabel = 16;
        fontButton = 16;
        fontTitle = 22;
        containerSize = 500;
        buttonContainerWidth = 170;
        bannerWidth = 250;
      } else {
        fontLabel = 16;
        fontButton = 14;
        fontTitle = 20;
        containerSize = 330;
        buttonContainerWidth = 150;
        bannerWidth = 250;
      }
    } else {
      // Mobile and Tablet logic
      if (Platform.isIOS || Platform.isAndroid) {
        if (screenWidth >= 1366) {
          topPadding = 250;
          containerSize = 900;
          fontLabel = 26;
          fontButton = 30;
          fontTitle = 45;
          iconSize = 20;
          buttonContainerWidth = 300;
          bannerHeight = 90;
          bannerWidth = 400;
        } else {
          topPadding = 180;
          containerSize = 700;
          fontLabel = 20;
          fontButton = 20;
          fontTitle = 34;
          iconSize = 14;
          buttonContainerWidth = 250;
          bannerHeight = 70;
          bannerWidth = 300;
        }
      } else {
        // Desktop logic
        if (screenWidth > 1440) {
          topPadding = 250;
          containerSize = 900;
          fontLabel = 30;
          fontButton = 30;
          fontTitle = 42;
          iconSize = 20;
          buttonContainerWidth = 300;
          bannerHeight = 100;
          bannerWidth = 500;
        } else {
          topPadding = 180;
          containerSize = 700;
          fontLabel = 20;
          fontButton = 20;
          fontTitle = 34;
          iconSize = 14;
          buttonContainerWidth = 250;
          bannerHeight = 70;
          bannerWidth = 300;
        }
      }
    }
  }
}
