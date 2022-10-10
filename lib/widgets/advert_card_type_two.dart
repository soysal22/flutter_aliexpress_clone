import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/view/aliexpress_detail.dart';

class AdvertCardTypeTwo extends StatelessWidget {
  const AdvertCardTypeTwo({
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
        height: MediaQuery.of(context).size.height / 3.4,
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
                  child: Image.asset(AliexpressConst.advertImageOne)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5, bottom: 10),
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
                        Text('8.999',
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
                                text: 'TRY14000,00',
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
                      Text('85065 satıldı'),
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.grey,
                      ),
                      Text('4.9')
                    ],
                  ),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'APPLE Watch Nike Series 7 GPS\n45mm Yıldız Işığı Kasa',
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
