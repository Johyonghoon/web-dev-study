import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("버튼"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  // MaterialState
                  //
                  // hovered - 호버링 상태(마우스 커서를 올려 놓은 상태)
                  // focused - 포커스 되었을 때(텍스트 필드)
                  // pressed - 눌렸을 때 (O)
                  // dragged - 드래그 되었을 때
                  // selected - 선택 되었을 때(체크박스, 라디오 버튼)
                  // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 되었을 때
                  // disabled - 비활성화 되었을 때 (O)
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.black;
                  }),
                  foregroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.red;
                  }),
                  padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(20.0);
                    },
                  ),
                ),
                child: Text("Button Style"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    // 메인 컬러
                    foregroundColor: Colors.black,
                    // 글자 및 애니메이션 컬러
                    shadowColor: Colors.green,
                    // 그림자 색깔
                    elevation: 10.0,
                    // 3D 입체감 높이
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                    padding: EdgeInsets.all(32.0),
                    side: BorderSide(
                      color: Colors.black,
                      width: 4.0,
                    )),
                child: Text("ElevatedButton"),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.green,
                  elevation: 10.0,
                ),
                child: Text("OutLinedButton"),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.black,
                ),
                child: Text("TextButton"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
