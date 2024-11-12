// reorderable_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/list_view_model.dart';

class ReorderableListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ListViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Reorderable List Example'),
      ),
      body: ChangeNotifierProvider<ListViewModel>(
        create: (_) => viewModel,
        child: Consumer<ListViewModel>(
          builder: (context, model, child) {
            return ReorderableListView(
              onReorder: model.reorderItems,
              children: model.items.map((item) {
                return ListTile(
                  key: ValueKey(item.id),
                  title: Text(item.title),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
