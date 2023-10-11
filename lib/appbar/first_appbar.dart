import 'package:flutter/material.dart';

class FirstAppbar extends StatelessWidget {
  const FirstAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          snap: true,
          // 살짝만 건드려도 appbar2 내려옴. 없으면 expandedHeight크기만큼 내려야 다보인다.
          floating: true,
          pinned: false,
          title: Text("appbar2", style: TextStyle(color: Colors.white)),
          expandedHeight: 250,
          flexibleSpace: Container(
            //color: Colors.red,
            child: Image.network("https://picsum.photos/seed/picsum/200/300",
                fit: BoxFit.cover // 폰의 상단바까지 앱으로 가득참
                ),
          ),
        ),
        SliverAppBar(
          pinned: true, // 앱바 고정
          title: Text("appbar1", style: TextStyle(color: Colors.white)),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => ListTile(
              leading: Icon(Icons.person),
              title: Text("$index"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
        )
      ],
    );
  }
}
