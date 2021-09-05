import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:todo/app/app.dart';
import 'package:todo/ussd_codes/ussd_codes.dart';

class UssdCategoryPage extends BeamPage {
  UssdCategoryPage({
    required UssdCategory category,
  }) : super(
            key: ValueKey('category-${category.name}'),
            title: category.name,
            type: BeamPageType.cupertino,
            child: UssdCategoryView(category: category),
            onPopPage: (context, delegate, page) {
              final categories = List<UssdCategory>.from(
                delegate.currentBeamLocation.state.data['categories']
                    as List<UssdCategory>,
              );

              categories.remove(categories.last);

              if (categories.isEmpty) {
                delegate.currentBeamLocation.update(
                  (state) => state.copyWith(
                    pathBlueprintSegments: [''],
                    data: {},
                  ),
                );
              } else {
                delegate.currentBeamLocation.update(
                  (state) => state.copyWith(
                    pathBlueprintSegments: ['category', ':categoryName'],
                    pathParameters: {
                      'categoryName': categories.last.name,
                    },
                    data: {'categories': categories},
                  ),
                );
              }

              return true;
            });

  static String get pathBlueprint => '/category/:categoryName';

  static String route(String name) => '/category/$name';

  static void open(
    BuildContext context, {
    required UssdCategory category,
  }) {
    final state = context.currentBeamLocation.state;
    final categories = state.data['categories'] != null
        ? state.data['categories'] as List<UssdCategory>
        : <UssdCategory>[];

    context.beamToNamed(
      route(category.name),
      data: {
        'categories': categories..add(category),
      },
    );
  }

  static bool checkBeamState(BeamState state) =>
      state.pathParameters.containsKey('categoryName') &&
      state.data['categories'] != null;
}
