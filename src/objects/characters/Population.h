/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Population.h
 * Author: huvart
 *
 * Created on Sobota, 2017, septembra 30, 16:24
 */

#ifndef POPULATION_H
#define POPULATION_H

#include "Inventory.h"
#include "Character.h"
#include <map>

using namespace std;

class Population {
public:
    Population();
    Population(const Population& orig);
    virtual ~Population();
private:
    Inventory m_inventory;
    map<Character_type, unsigned int> m_population_amount;
};

#endif /* POPULATION_H */

