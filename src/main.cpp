//#include <SFML/Graphics.hpp>
//#include <boost/array.hpp>
#include "libs/Managers/Managers/Main_manager.h"
#include "libs/Managers/Time/Date.h"
#include "libs/Managers/Time/Actual_date.h"
#include <iostream>
#include <gtkmm-2.4/gtkmm.h>

#include "libs/Managers/process_structure/Function_queue.h"
#include "libs/Functions/Functions.h"
using namespace std;

int main()
{

    auto app =
    Gtk::Application::create(argc, argv,
      "org.gtkmm.examples.base");

    Gtk::Window window;
    window.set_default_size(200, 200);

    return app->run(window);
    
    Main_manager program_manager;

    program_manager.init_all();

    program_manager.wait_until_end();
    
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
    
    /*Day_list dl;
    dl.add_action(Actual_date::get_actual_date().get_day_after(1),2, function_project::test1_function, NULL);
    Function_queue a = dl.get_actual_day_queue();
    auto b = a.pop();
    b.first(b.second);
    Actual_date::next_date();
    Function_queue a1 = dl.get_actual_day_queue();
    b = a1.pop();
    b.first(b.second);
     */
   // dl.
 
    
    
    std::cout << "---------------end---------------" << std::endl;
    return 0;
}
