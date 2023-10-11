import 'package:flutter/material.dart';

// 이게 가장 좋은 방법. 이거 쓰는게 제일 편하다.
class FourthAppbar extends StatelessWidget {
  const FourthAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // body를 appbar뒤로 확장한다.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Image.network(
            "http://picsum.photos/id/${index + 1}/200/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
