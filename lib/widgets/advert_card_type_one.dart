import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/view/aliexpress_detail.dart';

class AdvertCardTypeOne extends StatelessWidget {
  const AdvertCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AliexpressDetail(),
        ));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 2.9,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox.fromSize(
                  child: Image.asset(AliexpressConst.advertImage)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'TRY',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text('2649',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                        Text(',99',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'TRY5000,00',
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('31056 satıldı'),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.grey,
                      ),
                      Text('4.6')
                    ],
                  ),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Sony SAL 70-400mm \nf/4-5.6 G2 Telephoto Zoom Lens',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 20),
                      )),
                  SizedBox(height: 5),
                  Text(
                    'Ücretsiz Gönderim',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.green.shade700),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
