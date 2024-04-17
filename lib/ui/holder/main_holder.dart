// 이 화면에 여러 페이지를 둘 수 있다
import 'package:bottom_app/ui/holder/first/first_page.dart';
import 'package:bottom_app/ui/holder/third/third_page.dart';
import 'package:flutter/material.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({super.key});

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // 통신코드
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black,
        currentIndex: _index, // 선택된 아이콘에 색상 보여주기
        items: [
          // item 개수는 5개가 최대값, 2 최소값
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "사진"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "개인정보"),
        ],
        onTap: (i) {
          print("클릭됨 ${i}");
          _index = i;
          setState(() {});
        },
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Third Page"));
  }
}