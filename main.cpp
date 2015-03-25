// main.cpp

#include "sub/foo.h"
#include "bar.h"
#include <iostream>

using namespace std;

int main(int argc, char ** argv)
{
    Bar bar;
    Foo foo;
    cout << "Hello, world!" << endl;
    return 0;
}
