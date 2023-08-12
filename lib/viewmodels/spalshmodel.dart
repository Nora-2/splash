import '../constants/asset_constants.dart';

class OnboardingModel {
  final String titel1;
  String? image;
  final String tiltel2;
  final String backimage;
  bool visable;

  OnboardingModel(this.titel1, this.image, this.tiltel2, this.backimage,this.visable);
}

List<OnboardingModel> tabs = [
  OnboardingModel(
      'Welcome to',
      AssetConstants.appLogo,
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
      AssetConstants.splashScreenBackground,true),
      
  OnboardingModel(
    'Buy Quality\nDairy Products',
    '',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
    AssetConstants.splashScreenBackground2,
    false
  ),
  OnboardingModel(
      'Buy Premium\nQuality Fruits',
      '',
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
      AssetConstants.splashScreenBackground5,false),
  OnboardingModel(
      'Get Discounts\nOn All Products',
      '',
      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
      AssetConstants.splashScreenBackground6,false),
];
