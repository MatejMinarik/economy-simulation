/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


#include "Inventory.h"

void Inventory::add_item(Item item) {
    Item_type type = item.get_item_type();
    if(m_inventory.find(type) != m_inventory.end()){//item is in inventory
        m_inventory.at(type).add(item);
    }else{//item is not in inventory
        m_inventory.insert(std::pair<Item_type, Item>(type, item));        
    }
}

Item Inventory::get_item(Item_type type) {
    return m_inventory.at(type);
}

int Inventory::get_number_of_items() {
    int number_item = 0;
    for(auto i = m_inventory.begin(); i != m_inventory.end(); i++){
        number_item += i->second.get_total_amount();
    } 
    return number_item;
}

bool Inventory::have_item(Item_type type) {
    return (m_inventory.find(type)!= m_inventory.end());
}

void Inventory::remove_item(Item_type type) {
    m_inventory.erase(type);
}

bool Inventory::sub_item(Item item) {
    auto type = item.get_item_type();
    auto found_item = m_inventory.find(type);
    if(found_item != m_inventory.end()){//found item
        bool ret = found_item->second.sub(item);
        if(ret){
            if(found_item->second.is_empty()){
                m_inventory.erase(type);
            }
        }        
        return ret;
    }else{
        return false;
    }
}

bool Inventory::is_empty() {
    return m_inventory.empty();
}
