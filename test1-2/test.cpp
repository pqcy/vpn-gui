#include "test.h"

Back::Back(QObject *parent) : QObject(parent)
{

}

void Back::changeValue(int a)
{
    if (a == 1){
        valueChanged("value is 1, From c++");
    }else if (a == 2){
        valueChanged("value is 2, From c++");
    }else{
        valueChanged("!!!!!!!!");
    }
}
