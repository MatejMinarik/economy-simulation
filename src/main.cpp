#include <SFML/Graphics.hpp>
//#include <boost/array.hpp>
#include "Managers/Main_manager.h"
#include "objects/pleaces/settlements/Settlement.h"
#include "Managers/Date.h"
#include "Managers/Actual_date.h"
#include <iostream>


#include "../src/Managers/process_structure/Function_queue.h"
#include "../src/Functions/Functions.h"
using namespace std;

int main()
{

    //Main_manager program_manager;

    //program_manager.init_all();

    //program_manager.wait_until_end();
    
    std::cout << "--------------begin--------------" << std::endl;
    /*Date a;
    cout << a.get_day() << "." << a.get_month() << "." << a.get_year() << "." << a.get_epoch()  << endl;
    a.set(50000);
    cout << a.get_day() << "." << a.get_month() << "." << a.get_year() << "." << a.get_epoch() << " ----- " << a.get_raw_date()  << endl;
    Actual_date::set_date(a);
    Date b(20, 5, 8,0);
    
    cout << b.get_day() << "." << b.get_month() << "." << b.get_year() << "." << b.get_epoch() << " ----- " << b.get_raw_date()  << endl;
    Date c = a.get_day_after(39);
    cout << Actual_date::get_actual_date().get_day() << "." << Actual_date::get_actual_date().get_month() << "." << Actual_date::get_actual_date().get_year() << "." << b.get_epoch() << " ----- " << Actual_date::get_actual_date().get_raw_date()  << endl;
    Actual_date::next_date();
    cout << Actual_date::get_actual_date().get_day() << "." << Actual_date::get_actual_date().get_month() << "." << Actual_date::get_actual_date().get_year() << "." << b.get_epoch() << " ----- " << Actual_date::get_actual_date().get_raw_date()  << endl;
    
    
    cout << Actual_date::is_after_actual_date(a) << ", " << Actual_date::is_before_actual_date(a) << endl;
    cout << Actual_date::is_after_actual_date(b) << ", " << Actual_date::is_before_actual_date(b) << endl;
    cout << Actual_date::is_after_actual_date(c) << ", " << Actual_date::is_before_actual_date(c) << endl;
    
    cout << c.get_day() << "." << c.get_month() << "." << c.get_year() << "." << c.get_epoch() << " ----- " << c.get_raw_date()  << endl;*/
    
    
 
    std::cout << "---------------end---------------" << std::endl;
    return 0;
}
