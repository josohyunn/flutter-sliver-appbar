import 'package:flutter/material.dart';

// 2번째랑 다른점은 2번째는 화면에 글자를 넣지 못한다.
// 화면 전체가 SliverAppBar로 되어있기 때문에 body가 없다.
// 하지만 3번째는 Containter안에 Scaffold가 있기때문에 body가 있어 글자를 쓸 수 있다.
class ThirdAppbar extends StatelessWidget {
  const ThirdAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "http://picsum.photos/id/${index + 1}/200/300"),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent, // 투명
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text("Around"),
              leading: Icon(Icons.menu),
            ),
            body: Center(
              child: Text("Page $index"),
            ),
          ),
        );
      },
    );
  }
}
