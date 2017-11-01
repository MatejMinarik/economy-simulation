/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Day_list.h
 * Author: huvart
 *
 * Created on Nedeľa, 2017, októbra 1, 22:15
 */

#ifndef DAY_LIST_H
#define DAY_LIST_H

#include <map>

#include "Function_queue.h"
#include "boost/function.hpp"
#include "../Date.h"
#include "../Actual_date.h"

using namespace std;

class Day_list {
public:
    Day_list();
    Day_list(const Day_list& orig);
    virtual ~Day_list();
    
    bool add_action(Date date, unsigned int priority, boost::function<bool (void*)> function, void* function_class);
    Function_queue get_actual_day_queue();
    void remove_actual_day_queue();
private:
    map<unsigned long int, Function_queue> m_day_map;
    
};

#endif /* DAY_LIST_H */

