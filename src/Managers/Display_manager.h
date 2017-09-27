#ifndef DISPLAY_MANAGER_H
#define DISPLAY_MANAGER_H

class Main_manager;
#include <thread>

class Display_manager
{
    public:
        Display_manager(Main_manager* main_manager);
        virtual ~Display_manager();

        void init();
        void display_thread_function();
        void stop();
    private:
        std::thread m_display_thread;
        bool is_running;
        Main_manager* m_main_manager;
};

#endif // DISPLAY_MANAGER_H
