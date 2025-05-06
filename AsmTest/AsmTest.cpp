
#include <iostream>

extern "C" int TestFunction();

int main()
{
    TestFunction();
    std::cout << "sweg!\n";
}
