/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Function_queue.cpp
 * Author: huvart
 * 
 * Created on Nedeľa, 2017, októbra 1, 19:02
 */

#include "Function_queue.h"
#include <iostream>
#include "../../Functions/Functions.h"
#include <exception>
#include <string>

Function_queue::Function_queue() {
    m_highest_priority_queue = -1;
    for(int i=0;i<NUMBER_OF_PRIORITIES;i++){
        m_data_functions.push_back(std::queue<pair<boost::function<bool (void*)>, void*> >());
    }
}

Function_queue::Function_queue(const Function_queue& orig) {
    m_data_functions = orig.m_data_functions;
    m_highest_priority_queue = orig.m_highest_priority_queue;
}

Function_queue& Function_queue::operator=(const Function_queue orig) {
    m_data_functions = orig.m_data_functions;
    m_highest_priority_queue = orig.m_highest_priority_queue;
    return *this;
}


Function_queue::~Function_queue() {
}

void Function_queue::add_function(int priority, boost::function<bool (void*) > function, void* function_class) {
    std::lock_guard<std::mutex> lck(m_queue_mutex);        

    if(priority > NUMBER_OF_PRIORITIES || priority < 0){
        return;
    }
    m_data_functions.at(priority).push(pair<boost::function<bool (void*)>, void*>(function, function_class));
    if(m_highest_priority_queue < priority){
        m_highest_priority_queue = priority;
    }
}

unsigned int Function_queue::get_highest_priority_non_empty_queue() {
    std::lock_guard<std::mutex> lck(m_queue_mutex);
    return m_highest_priority_queue;
}

pair<boost::function<bool(void*) >, void*> Function_queue::pop_queue(int priority) {
    //std::lock_guard<std::mutex> lck(m_queue_mutex);
    if(priority < -1 || priority >= NUMBER_OF_PRIORITIES){
        std::string err_string ="pop_queue incorect priority ";
        err_string.append(std::to_string(priority));
        throw std::out_of_range(err_string);
    }
    if(priority == -1){
        return pair<boost::function<bool(void*) >, void*>(function_project::empty_function, NULL);
    }
    if(queue_empty(priority)){
        return pair<boost::function<bool(void*) >, void*>(function_project::empty_function, NULL);
    }
    pair<boost::function<bool(void*) >, void*> ret;
    ret = m_data_functions.at(priority).front();
    m_data_functions.at(priority).pop();
    while(queue_empty(priority)){
        priority--;
        if(priority < 0){
            break;
        }
    }
    m_highest_priority_queue = priority;
    return ret;
}

pair<boost::function<bool(void*) >, void*> Function_queue::pop() {
    std::lock_guard<std::mutex> lck(m_queue_mutex);
    std::cout << "pop m_highest_priority_queue " << (int)m_highest_priority_queue << " --" << std::endl;
    return pop_queue(m_highest_priority_queue);
}


bool Function_queue::queue_empty(int priority) {
    if(priority < 0 || priority >= NUMBER_OF_PRIORITIES){
        std::string err_string ="queue_empty incorect priority ";
        err_string.append(std::to_string(priority));
        throw std::out_of_range(err_string);
    }
    //std::lock_guard<std::mutex> lck(m_queue_mutex);
    return m_data_functions.at(priority).empty();
}

bool Function_queue::all_queue_empty() {
    std::lock_guard<std::mutex> lck(m_queue_mutex);
    return m_highest_priority_queue < 0;
}
