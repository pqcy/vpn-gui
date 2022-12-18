# Editor - Qt Design Studio in Windows 11
click on file that < project name >.qmlproject  

# Editor - Qt Creator in Linux (ubuntu 22.04 LTS)
Open Project → *.pro (qmake)  

-----------------------------------------------------------------------------
ApplicationWindow 는 Window 에서 파생된 형태의 아이템이다.   
Window에 추가적으로 다음과 같은 프로퍼티들이 추가된다.  

contentItem : Item  
footer : Item  
header : Item  
menuBar : Item  
 

QML에서 창의 속성, 모양 및 레이아웃을 제어 할 수 있으며 menuBar프로퍼티에 MenuBar 유형의 아이템을 추가할 수 있다.  

![ApplicationWindow 레이아웃](./layout.png)  

This type (ApplicationWindow) is not supported as a root element by Qt Design Studio  

------------------------------------------------
c++ 코드 연동 reference  

https://www.youtube.com/watch?v=Nma3c3YxsUo&t=154s   

----------------------------------------------
pqcvpn 폴더에서  
test1.pro 파일 실행  
test.cpp 에서 경로 및 인자 주기   
Qt Creator 실행시 Run as root user 체크   

------------------------------
test.cpp 에서 경로 및 인자 주기   
pqcvpn2 에서 .qml 파일 switch 블록안 의 onclicked 블록 안의 back.~ 주석을 지우면 gui만으로도 vpn이 실행된다.(참고로 주석을 지우지 않고 실행해도 ui는 잘 작동)   
다만 주석을 지운 후에는 switch 액션이 바뀌지 않는다. onclicked 안의 back.changVaule(1)의(test.cpp 참고) 실행이 끝나지 않기 때문에 switch ui가 변하지 않음. 수정필요
