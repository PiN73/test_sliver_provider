import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_sliver_provider/model.dart';

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        /*
        SliverToBoxAdapter(
          child: Text('header'),
        ),
        */
        Consumer<Model>(
          builder: (context, model, child) {
            if (model.data == null) {
              return SliverToBoxAdapter(
                child: Text('Loading...'),
              );
            }
            /*
            return SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Data:'),
                  Text('${model.data}'),
                ],
              ),
            );
            */
            return SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Text('Data:'),
                  Text('${model.data}'),
                ],
              ),
            );
          },
        ),
        SliverToBoxAdapter(
          child: Text('footer'),
        ),
      ],
    );
  }
}
