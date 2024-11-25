import 'package:farm2table/data/products.dart';
import 'package:farm2table/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0.1,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        side:BorderSide(
          width: 0.2,
          color: Color.fromARGB(255, 194, 193, 193),
        ),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        height: 120,
        alignment: Alignment.topRight,
        width: double.infinity,
        padding: EdgeInsets.all(8),
       decoration: BoxDecoration(
         image: DecorationImage( 
          image:NetworkImage(product.image),
          fit:BoxFit.fill,
          )
       ),
        child: SizedBox(
          height: 30,
          width: 30,
          child: IconButton.filledTonal(
            padding: EdgeInsets.zero,
            onPressed: () {},
            iconSize: 18,
             icon:const Icon(CupertinoIcons.bookmark)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                product.name,
                style:Theme.of(context).textTheme.bodyLarge,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              RichText(
                text: TextSpan(
                children:[
                  TextSpan(
                    text:"\$${product.price}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                    TextSpan(
                    text:"/${product.unit}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              ),

              SizedBox(
                width: 30,
                height: 30,
                child: IconButton.filled(
                  padding: EdgeInsets.zero,
                  onPressed: (){}, 
                  icon: const Icon(Icons.add),
                  ))
            ],
            ),
          ],
          
        ),
      )
        ],
      )
    );
  }
}