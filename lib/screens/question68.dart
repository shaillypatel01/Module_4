import 'package:flutter/material.dart';

class question68 extends StatelessWidget {
  const question68({super.key});

  @override
  Widget build(BuildContext context) {
    return ContextMenuExample();
  }
}

class ContextMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context Menu Example'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example item count
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(1000, 1000, 0, 0), // Position the menu
                items: <PopupMenuEntry>[
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    value: 'view',
                    child: Text('View'),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete'),
                  ),
                ],
                elevation: 8.0,
              ).then((value) {
                if (value == 'edit') {
                  // Perform edit action
                  print('Edit action for item $index');
                } else if (value == 'view') {
                  // Perform view action
                  print('View action for item $index');
                } else if (value == 'delete') {
                  // Perform delete action
                  print('Delete action for item $index');
                }
              });
            },
            child: ListTile(
              title: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
