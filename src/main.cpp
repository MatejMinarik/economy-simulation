#include <SFML/Graphics.hpp>
//#include <boost/array.hpp>
#include "Managers/Main_manager.h"
#include "objects/items/Item.h"
#include "objects/characters/Inventory.h"
#include <iostream>

int main()
{

    //Main_manager program_manager;

    //program_manager.init_all();

    //program_manager.wait_until_end();
    
    std::cout << "--------------begin--------------" << std::endl;
    Item a(Item_type::grain);
    a.add(1, 100);
    a.add(102,1);
    
    std::cout << "a type:" << a.get_item_type() << std::endl;
    std::cout << "a size:" << a.get_total_amount() << std::endl;
    
    Item b;
    b.add(2, 100);
    b.add(100,4);
    
    std::cout << "b type:" << b.get_item_type() << std::endl;
    std::cout << "b size:" << b.get_total_amount() << std::endl;
    
    Inventory w;
    w.add_item(a);
    w.add_item(b);
    
    std::cout << "w.have_item(Item_type::grain)  " << w.have_item(Item_type::grain) << std::endl;
    if(w.have_item(Item_type::grain)){
        std::cout << "w.get_item(Item_type::grain).get_total_amount(): " << w.get_item(Item_type::grain).get_total_amount() << std::endl;
    }
    std::cout << "w.have_item(Item_type::none)   " << w.have_item(Item_type::none) << std::endl;
    if(w.have_item(Item_type::none)){
        std::cout << "w.get_item(Item_type::none).get_total_amount(): " << w.get_item(Item_type::none).get_total_amount() << std::endl;
    }
    std::cout << "---------------end---------------" << std::endl;
    return 0;
}
