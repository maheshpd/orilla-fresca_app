import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
          name: "Carnes",
          icon: IconFontHelper.MEATS,
          color: AppColors.MEATS,
          imgName: "cat1",
          subCategories: []),
      Category(
          name: "Frutas",
          icon: IconFontHelper.FRUITS,
          color: AppColors.FRUITS,
          imgName: "cat2",
          subCategories: []),
      Category(
          name: "Vegetables",
          icon: IconFontHelper.VEGS,
          color: AppColors.VEGS,
          imgName: "cat3",
          subCategories: []),
      Category(
          name: "Semillas",
          icon: IconFontHelper.SEEDS,
          color: AppColors.SEEDS,
          imgName: "cat4",
          subCategories: []),
      Category(
          name: "Dulces",
          icon: IconFontHelper.PASTRIES,
          color: AppColors.PASTRIES,
          imgName: "cat5",
          subCategories: []),
      Category(
          name: "Especies",
          icon: IconFontHelper.SPICES,
          color: AppColors.SPICES,
          imgName: "cat6",
          subCategories: []),
    ];
  }
}
