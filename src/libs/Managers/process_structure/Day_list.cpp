/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Day_list.cpp
 * Author: huvart
 * 
 * Created on Nedeľa, 2017, októbra 1, 22:15
 */

#include "Day_list.h"
#include <iostream>


Day_list::Day_list() {
    
}

Day_list::Day_list(const Day_list& orig) {
    m_day_map = orig.m_day_map;
}

Day_list& Day_list::operator=(const Day_list orig) {
    m_day_map = orig.m_day_map;
    return *this;
}


Day_list::~Day_list() {
}

bool Day_list::add_action(Date date, int priority, boost::function<bool (void*) > function, void* function_class) {
    //TO DO: add functionality
    if(Actual_date::is_after_actual_date(date)){
        auto day_queue = m_day_map.find(date.get_raw_date());
        if(day_queue != m_day_map.end()){   //day already exist
            day_queue->second.add_function(priority, function, function_class); 
        }else{                              //new day
            Function_queue fq_tmp;
            fq_tmp.add_function(priority, function, function_class);
            auto insertion = m_day_map.insert(std::pair<long int, Function_queue>(date.get_raw_date(), fq_tmp));
            //insertion.first->second.add_function();
        }
        return true;
    }
    
    return false;
}

Function_queue Day_list::get_actual_day_queue() {
    auto day_queue = m_day_map.find(Actual_date::get_actual_date().get_raw_date());
    if(day_queue != m_day_map.end()){
        return day_queue->second;
    }else{
        return Function_queue();
    }
}

void Day_list::remove_actual_day_queue() {
    m_day_map.erase(Actual_date::get_actual_date().get_raw_date());
}
