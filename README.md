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
