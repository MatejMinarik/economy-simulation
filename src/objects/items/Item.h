/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Item.h
 * Author: huvart
 *
 * Created on Pondelok, 2017, septembra 25, 22:00
 */

#ifndef ITEM_H
#define ITEM_H

#include <vector>
#include <map>

enum Item_type{
    none, gold, grain, flower, beer, wine, tools, barrels, thread, wool, meat, cloth, clothes
};

class Item{
public:
    Item();
    Item(Item_type type);
    Item_type get_item_type();
    double get_base_price();
    
    void add(char quality, long int amount);
    void add(Item item);
    bool sub(char quality, long int amount);
    bool sub(Item item);
    std::map<char, long int> get_quality_amout_map();
    long int get_total_amount();
    float get_avereage_quality();
    char get_median_quality();
    double get_weighted_average_quality();
    bool is_empty();
    
protected:
    std::map<char, long int> m_quality_amount;
    Item_type m_item_type;
};



#endif /* ITEM_H */

