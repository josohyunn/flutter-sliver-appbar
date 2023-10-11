import 'package:flutter/material.dart';

class SecondAppbar extends StatelessWidget {
  const SecondAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: FirstAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context)
                .size
                .height, // appbar의 높이를 flexibleSpace크기만큼 늘림
            leading: Icon(Icons.menu),
            title: Text("Around"),
            flexibleSpace: PageView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Image.network(
                  "http://picsum.photos/id/${index + 1}/200/300",
                  fit: BoxFit.cover,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
