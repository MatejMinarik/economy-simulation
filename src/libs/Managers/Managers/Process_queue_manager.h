#ifndef PROCESS_QUEUE_MANAGER_H
#define PROCESS_QUEUE_MANAGER_H


#include <boost/function.hpp>
#include <condition_variable>
#include <mutex>

#include "../process_structure/Day_list.h"

#define NUMBER_OF_PROCESSING_THREADS 8

class Main_manager;

class Process_queue_manager
{
    public:
        Process_queue_manager(Main_manager* main_manager);
        virtual ~Process_queue_manager();

        void init();
        void stop();
        void Process_thread_function();
        void Process_actual_day();
        bool all_threads_done();
    protected:

    private:
        void thread_done();
        
        
        std::vector<std::thread> m_process_threads;
        bool m_is_running;
        Main_manager* m_main_manager;
        std::condition_variable m_cv_day_stepper;
        std::mutex m_m_day_stepper;
        char m_threads_done;
        std::mutex m_m_threads_done;
        Day_list * m_day_list_ptr;
        Function_queue m_actual_function_queue;
};

#endif // PROCESS_QUEUE_MANAGER_H
