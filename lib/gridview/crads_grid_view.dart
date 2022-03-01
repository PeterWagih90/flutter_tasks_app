import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/gridview/shopping_crat_module.dart';

class CardsGridView extends StatefulWidget {
  final List<ShoppingCartModule> items;

  const CardsGridView(this.items, {Key? key}) : super(key: key);

  @override
  _CardsGridViewState createState() => _CardsGridViewState();
}

class _CardsGridViewState extends State<CardsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: .6,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctx, index) {
          return Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),),

              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[InkResponse(
                      enableFeedback: true,
                      child: Image.network(
                        widget.items[index].poster_path,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 150,
                      ),
                      onTap: () => openDetailPage(widget.items[index], index),
                    ),

                  Expanded(
                      child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.items[index].title,
                                maxLines: 1,
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                widget.items[index].description,
                                maxLines: 3,
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  Text(
                                    "${widget.items[index].price}\$",
                                  ),
                                  Spacer(),
                                  Icon(widget.items[index].favorite?Icons.favorite:Icons.favorite_border_outlined,color: Colors.red,)
                                ],
                              )

                            ],
                          )))
                ],
              ));
        });
  }

  openDetailPage(ShoppingCartModule item, int index) {}
}
