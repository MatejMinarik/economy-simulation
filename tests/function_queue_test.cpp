/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   function_queue_test.cpp
 * Author: huvart
 *
 * Created on Streda, 2017, novembra 1, 13:22
 */

#include <stdlib.h>
#include <iostream>
#include "../src/Managers/process_structure/Function_queue.h"
#include "../src/Functions/Functions.h"

/*
 * Simple C++ Test Suite
 */

void test_init() {
    Function_queue queue;
    queue.add_function(1, function_project::test1_function, NULL);
    std::cout << "function_queue_test test init" << std::endl;
}

void test_push_pop() {
       Function_queue queue;
    queue.add_function(1, function_project::test1_function, NULL);
    queue.add_function(2, function_project::test1_function, NULL);
    queue.add_function(1, function_project::test2_function, NULL);
    queue.add_function(1, function_project::test2_function, NULL);
    queue.add_function(5, function_project::test2_function, NULL);
    queue.add_function(7, function_project::test3_function, NULL);
    
    
    pair<boost::function<bool(void*) >, void*> tmp = queue.pop();
    tmp.first(tmp.second);
    
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    tmp = queue.pop();
    tmp.first(tmp.second);
    
    std::cout << "function_queue_test test_push_pop" << std::endl;
}

void test21() {
    std::cout << "function_queue_test test 2" << std::endl;
    //std::cout << "%TEST_FAILED% time=0 testname=test2 (function_queue_test) message=error message sample" << std::endl;
}

int main(int argc, char** argv) {
    std::cout << "%SUITE_STARTING% function_queue_test" << std::endl;
    std::cout << "%SUITE_STARTED%" << std::endl;

    std::cout << "%TEST_STARTED% test_init (function_queue_test)" << std::endl;
    test_init();
    std::cout << "%TEST_FINISHED% time=0 test_init (function_queue_test)" << std::endl;

    std::cout << "%TEST_STARTED% test_push_pop (function_queue_test)" << std::endl;
    test_push_pop();
    std::cout << "%TEST_FINISHED% time=0 test_push_pop (function_queue_test)" << std::endl;
    
    std::cout << "%TEST_STARTED% test2 (function_queue_test)\n" << std::endl;
    test21();
    std::cout << "%TEST_FINISHED% time=0 test2 (function_queue_test)" << std::endl;

    std::cout << "%SUITE_FINISHED% time=0" << std::endl;

    return (EXIT_SUCCESS);
}

