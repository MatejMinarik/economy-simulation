#ifndef MAIN_MANAGER_H
#define MAIN_MANAGER_H


#include "Display_manager.h"
#include "Process_queue_manager.h"
#include "List_manager.h"
#include "Setting_manager.h"
#include <condition_variable>


 /**
 *  \brief class for managing all other managers, init them, give them common point to communicate and close them
 */
class Main_manager
{
    public:
        Main_manager();
        virtual ~Main_manager();

        void init_all();

        /** \brief call from subclasses to stop other threads and exit program
         * \return void
         */
        void exit_program();
        void wait_until_end();

        Process_queue_manager* get_process_queue_manager();
        List_manager* get_list_manager();
        Setting_manager* get_setting_manager();
        Display_manager* get_display_manager();
    private:
        void init_process_queue_manager();
        void init_list_manager();
        void init_setting_manager();
        void init_display_manager();

        Process_queue_manager*  m_pq_manager;
        List_manager*           m_l_manager;
        Setting_manager*        m_s_manager;
        Display_manager*        m_d_manager;

        bool m_is_running;
        std::condition_variable m_cv_ending;
        std::mutex m_mutex_ending;

};

#endif // MAIN_MANAGER_H
