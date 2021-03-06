#include "Main_manager.h"
#include "../Time/Actual_date.h"
#include <iostream>

Main_manager::Main_manager()
{
    Actual_date::set_date(Date(0));
    m_is_running = true;
    m_l_manager = new List_manager(this);
    m_pq_manager = new Process_queue_manager(this);
    m_s_manager = new Setting_manager(this);
    m_d_manager = new Display_manager(this);
}

Main_manager::~Main_manager()
{
    //dtor
    delete(m_pq_manager);
    delete(m_l_manager);
    delete(m_s_manager);
    delete(m_d_manager);
}

void Main_manager::init_process_queue_manager()
{
    m_pq_manager->init();
}

void Main_manager::init_list_manager()
{
    m_l_manager->init();
}

void Main_manager::init_setting_manager()
{
    m_s_manager->init();
}

void Main_manager::init_display_manager()
{
    m_d_manager->init();
}

void Main_manager::init_all()
{
    init_display_manager();
    init_list_manager();
    init_process_queue_manager();
    init_setting_manager();
}

void Main_manager::exit_program()
{
    m_is_running = false;
    std::unique_lock<std::mutex> lk(m_mutex_ending);
    m_cv_ending.notify_all();
}

void Main_manager::wait_until_end()
{
    std::unique_lock<std::mutex> lk(m_mutex_ending);
    m_cv_ending.wait(lk);

    //TO DO: call all managers to end their threads
    m_pq_manager->stop();
    m_d_manager->stop();
}

Process_queue_manager* Main_manager::get_process_queue_manager()
{
    return m_pq_manager;
}

List_manager* Main_manager::get_list_manager()
{
    return m_l_manager;
}

Setting_manager* Main_manager::get_setting_manager()
{
    return m_s_manager;
}

Display_manager* Main_manager::get_display_manager()
{
    return m_d_manager;
}

