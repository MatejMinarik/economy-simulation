/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Function_queue.h
 * Author: huvart
 *
 * Created on Nedeľa, 2017, októbra 1, 19:02
 */

#ifndef FUNCTION_QUEUE_H
#define FUNCTION_QUEUE_H

#include "boost/function.hpp"
#include <queue>
#include <vector>
#include <mutex>


#define NUMBER_OF_PRIORITIES 10

using namespace std;

class Function_queue {
public:
    Function_queue();
    Function_queue(const Function_queue& orig);
    Function_queue& operator=(const Function_queue);
    virtual ~Function_queue();
    
    void add_function(int priority, boost::function<bool (void*)> function, void* function_class);
    unsigned int get_highest_priority_non_empty_queue();
    
    
    pair<boost::function<bool (void*)>, void*> pop();
    //TO DO: every queue can be access only by one thread at a time
    //TO DO: add empty function to do nothing if need return a non existant function, with log writing
    
    bool all_queue_empty();
private:
    pair<boost::function<bool (void*)>, void*> pop_queue(int priority);
    bool queue_empty(int priority);
    
    vector<queue<pair<boost::function<bool (void*)>, void*> > > m_data_functions;
    char m_highest_priority_queue;
    mutex m_queue_mutex;
};

#endif /* FUNCTION_QUEUE_H */

