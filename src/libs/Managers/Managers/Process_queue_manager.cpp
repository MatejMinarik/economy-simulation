#include <thread>

#include "Process_queue_manager.h"
#include "Main_manager.h"
#include <iostream>

Process_queue_manager::Process_queue_manager(Main_manager* main_manager)
{
    m_main_manager = main_manager;
    m_threads_done = 0;
    m_day_list_ptr = main_manager->get_list_manager()->get_day_list();
    m_is_running = true;
    m_actual_function_queue = m_day_list_ptr->get_actual_day_queue();
}

Process_queue_manager::~Process_queue_manager()
{
    //dtor
}

void Process_queue_manager::init()
{
    for(int i=0;i<NUMBER_OF_PROCESSING_THREADS;i++){
        m_process_threads.push_back(std::thread(&Process_queue_manager::m_process_threads, this));
    }
}

void Process_queue_manager::stop()
{
    //if add some construction so thread could be stuck somewhere, need to add here some unstuck mechanism
    m_is_running = false;
    std::unique_lock<std::mutex> day_stepper_lock(m_m_day_stepper);
    m_cv_day_stepper.notify_all();
    for(int i=0;i<NUMBER_OF_PROCESSING_THREADS;i++){
        m_process_threads.at(i).join();
    }
}

void Process_queue_manager::Process_thread_function() {

    while(m_is_running){
        if(m_actual_function_queue.all_queue_empty()){
            thread_done();
        }
        std::unique_lock<std::mutex> day_stepper_lock(m_m_day_stepper);
        m_cv_day_stepper.wait(day_stepper_lock, [&](){return (!m_actual_function_queue.all_queue_empty()) || (m_is_running);});
        
        auto function_pair = m_actual_function_queue.pop();
        function_pair.first(function_pair.second);
        
    }
}

void Process_queue_manager::Process_actual_day() {
        std::unique_lock<std::mutex> day_stepper_lock(m_m_day_stepper);
        m_actual_function_queue = m_day_list_ptr->get_actual_day_queue();
        m_cv_day_stepper.notify_all();
}

bool Process_queue_manager::all_threads_done() {
    std::lock_guard<std::mutex> lock(m_m_threads_done);
    return m_threads_done == NUMBER_OF_PROCESSING_THREADS;
}

void Process_queue_manager::thread_done() {
    std::lock_guard<std::mutex> lock(m_m_threads_done);
    m_threads_done++;
}
