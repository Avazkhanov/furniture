import 'package:furniture/data/models/on_board_model/on_board_model.dart';
import 'package:furniture/utils/images/app_images.dart';

List<OnBoardModel> onBoardData = [
  OnBoardModel(
    imagePath: AppImages.onBoard1,
    svgPath: AppImages.arIcon,
    description: "AR Furniture Setup",
    title: "Experience Furniture With Augmented Reality",
    subTitle: "You can try furniture from the catalog in your home with AR.",
  ),
  OnBoardModel(
    imagePath: AppImages.onBoard2,
    svgPath: AppImages.threeDIcon,
    description: "3d Product View",
    title: "Look at the Furniture on Each Side",
    subTitle: "You can try furniture from the catalog in your home with AR.",
  ),
  OnBoardModel(
    imagePath: AppImages.onBoard3,
    svgPath: AppImages.moreIcon,
    description: "More Explore",
    title: "Explore Modern Furniture",
    subTitle: "You can try furniture from the catalog in your home with AR.",
  ),
];
