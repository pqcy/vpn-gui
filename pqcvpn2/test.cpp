#include "test.h"

Back::Back(QObject *parent) : QObject(parent)
{

}
// switch 클릭시 Back 함수가 끝나야 switch 버튼이 true로 바뀜.
void Back::changeValue(int a)
{
    if (a == 1){
        //절대 경로 및 인자 주기
        system("sudo /home/pqcy/pqcvpn/start.sh");
        system("sudo /home/pqcy/pqcvpn/vpnclient-test dum0 00:0c:29:39:f3:7f ens33 175.193.34.28 12345");

    }else if (a == 2){
        system("sudo pkill vpnclient-test");
        system("sudo /home/pqcy/pqcvpn/stop.sh ");
    }
}
