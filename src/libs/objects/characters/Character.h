/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Character.h
 * Author: huvart
 *
 * Created on Pondelok, 2017, septembra 25, 22:01
 */

#ifndef CHARACTER_H
#define CHARACTER_H

#include "Inventory.h"
#include <list>

//!!!!!!!!!!!!!!!!!!!!! development posed, until macro view is done!!!!!!!!!!!!!!!!!!
enum Character_type{
    nobel, merchant, pesent, craftsman
};

template <Character_type type>
class Character{
public:
    Character();
    void init();
    Character_type get_type();
    void do_stuff();//TO DO: change to something
    void consumption();
    void check_deth();
    void die();
    
protected:
    //Character_type m_character_type;
    Inventory m_inventory;
    int m_number_of_individuals;
    bool m_male;
    std::list<Character> m_family;
    unsigned char m_age;
    unsigned char m_die_age;
};

#endif /* CHARACTER_H */

