#ifndef LIST_MANAGER_H
#define LIST_MANAGER_H


class Main_manager;

class List_manager
{
    public:
        List_manager(Main_manager* main_manager);
        virtual ~List_manager();


        void init();
        void stop();
    protected:

    private:
        bool is_running;
        Main_manager* m_main_manager;
        
};

#endif // LIST_MANAGER_H
