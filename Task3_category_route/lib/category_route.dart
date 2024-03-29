// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';
// TODO: Check if we need to import anything
// TODO: Define any constants
final _backgroundColor = Colors.blue[200];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  
  Widget build(BuildContext context) {
    final categories = <Category>[];
      for(var i=0; i<_categoryNames.length;i++)
      {
        categories.add(
          Category(
            name: _categoryNames[i],
            iconLocation: Icons.cake,
            color: _baseColors[i],),);
      }
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
     Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }
    
    // TODO: Create a list view of the Categories
    final listView = Container(
      padding: EdgeInsets.all(8.0),
      color: _backgroundColor,
      child: _buildCategoryWidgets(categories),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
    elevation:0.0,
    title: Text(
      'Unit Converter',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
        ),
        ),
       centerTitle: true,
      backgroundColor: _backgroundColor,
      );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
