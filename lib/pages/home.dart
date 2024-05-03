import "dart:js_interop";

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../models/category_model.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                color: Colors.green,
                child: ListView.builder(itemBuilder: (context, index) {
                  return Container();
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: const Color(0xff101617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search Pancake',
            hintStyle: const TextStyle(
              color: Color(0xffDDDADA),
              fontSize: 14,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            // notes: wrap inside [InstrinsicHeight] to show Divider
            suffixIcon: Container(
              width:
                  100, // notes: if we don't put this, suffix icon occupies the whole space
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10, // notes: create space top
                      endIndent: 10, // notes: create space bottom
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/icons/Filter.svg'),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/icons/arrow_left2.svg',
          height: 20,
          width: 20,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: newMethod(),
        ),
      ],
    );
  }

  Container newMethod() {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: 37,
      child: SvgPicture.asset(
        'assets/icons/Search.svg',
        height: 20,
        width: 20,
      ),
      decoration: BoxDecoration(
        color: Color(0xffF7F8F8),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
