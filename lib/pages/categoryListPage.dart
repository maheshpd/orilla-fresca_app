import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helpers/appcolors.dart';
import 'package:orilla_fresca_app/helpers/iconhelper.dart';
import 'package:orilla_fresca_app/helpers/utils.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/pages/selectedcategorypage.dart';
import 'package:orilla_fresca_app/widget/categorybottombar.dart';
import 'package:orilla_fresca_app/widget/categorycard.dart';
import 'package:orilla_fresca_app/widget/iconfont.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  CategoryListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: IconFont(
            color: AppColors.MAIN_COLOR,
            size: 40,
            iconName: IconFontHelper.LOGO),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/me.jpg'),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Seleccione una categoria:',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 100),
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                    category: categories[index],
                    onCardClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SelectedCategoryPage()));
                    },
                  );
                },
              ))
            ],
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CategoryBottomBar(),
          )
        ]),
      ),
    );
  }
}
