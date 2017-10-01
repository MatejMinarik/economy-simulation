#include <SFML/Graphics.hpp>
//#include <boost/array.hpp>
#include "Managers/Main_manager.h"
#include "objects/pleaces/settlements/Settlement.h"
#include "Managers/Date.h"
#include <iostream>


using namespace std;

int main()
{

    //Main_manager program_manager;

    //program_manager.init_all();

    //program_manager.wait_until_end();
    
    std::cout << "--------------begin--------------" << std::endl;
    Date a;
    cout << a.get_day() << "." << a.get_month() << "." << a.get_year() << "." << a.get_epoch()  << endl;
    a.set(50000);
    cout << a.get_day() << "." << a.get_month() << "." << a.get_year() << "." << a.get_epoch()  << endl;
    Date b(20, 5, 8,0);
    
    cout << b.get_day() << "." << b.get_month() << "." << b.get_year() << "." << b.get_epoch()  << endl;
    std::cout << "---------------end---------------" << std::endl;
    return 0;
}
