/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Inventory.h
 * Author: huvart
 *
 * Created on Pondelok, 2017, septembra 25, 22:59
 */

#ifndef INVENTORY_H
#define INVENTORY_H

#include "../items/Item.h"

class Inventory{
public:
    int get_number_of_items();
    Item get_item(Item_type type);
    void add_item(Item item);
    bool sub_item(Item item);
    bool have_item(Item_type type);
    void remove_item(Item_type type);
    bool is_empty();
    
    //int get_inventory_weight();   //mabe add in future to know how much it weight
    
protected:
    std::map<Item_type, Item> m_inventory;
   
};


#endif /* INVENTORY_H */

