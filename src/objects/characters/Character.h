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


enum Character_type{
    nobel, merchant, pesent, craftsman
};


class Character{
public:
    Character();
    virtual void init();
    virtual Character_type get_type();
    virtual void do_stuff();//TO DO: change to something
    
protected:
    Character_type m_character_type;
    Inventory m_inventory;
};

#endif /* CHARACTER_H */

