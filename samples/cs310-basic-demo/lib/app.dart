import 'package:flutter/material.dart';
import 'package:cs310_flutter_demo/state.dart';
import 'package:provider/provider.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<MyState>();

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'URL'),
                onSubmitted: (String value) async {
                  state.updateData(value);
                },
              ),
            ),
            if (state.imageUrl != null)
              Image(width: 256, image: NetworkImage(state.imageUrl as String)),
            Text(state.text),
          ],
        ),
      ),
    );
  }
}
