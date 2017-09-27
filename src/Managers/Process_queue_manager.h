#ifndef PROCESS_QUEUE_MANAGER_H
#define PROCESS_QUEUE_MANAGER_H


class Main_manager;

class Process_queue_manager
{
    public:
        Process_queue_manager(Main_manager* main_manager);
        virtual ~Process_queue_manager();

        void init();
        void stop();
    protected:

    private:
        bool is_running;
        Main_manager* m_main_manager;
};

#endif // PROCESS_QUEUE_MANAGER_H
