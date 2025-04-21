import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/portfolio_detail.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('title'.tr()),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Pilih ini'),
                      subtitle: Text('Opsi 1'),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                      onTap:
                          () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const PortfolioDetail(),
                              ),
                            ),
                          },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Three-line ListTile'),
                      subtitle: Text(
                        'A sufficiently long subtitle warrants three lines.',
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(size: 72.0),
                      title: Text('Three-line ListTile'),
                      subtitle: Text(
                        'A sufficiently long subtitle warrants three lines.',
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
