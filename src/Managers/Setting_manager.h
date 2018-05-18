#ifndef SETTING_MANAGER_H
#define SETTING_MANAGER_H


class Main_manager;

class Setting_manager
{
    public:
        Setting_manager(Main_manager* main_manager);
        virtual ~Setting_manager();

        void init();
        void stop();
    protected:

    private:
        bool m_is_running;
        Main_manager* m_main_manager;
};

#endif // SETTING_MANAGER_H
