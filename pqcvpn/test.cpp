#include "test.h"

Back::Back(QObject *parent) : QObject(parent)
{

}

void Back::changeValue(int a)
{
    if (a == 1){
        //절대 경로 및 인자 주기
        system("sudo pqcvpn/start.sh");
        system("sudo pqcvpn/test1/vpnclient-test dum0 ");

    }else if (a == 2){
        system("sudo pkill /home/pqcy/test1/vpnclient-test");
        system("sudo /home/pqcy/test1/stop.sh ");
    }
}
