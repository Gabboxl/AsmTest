// AsmTest.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>

extern "C" int TestFunction();

int main()
{
    TestFunction();
    std::cout << "sweg!\n";
}
