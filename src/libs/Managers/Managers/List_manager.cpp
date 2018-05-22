#include "List_manager.h"
#include <iostream>

List_manager::List_manager(Main_manager* main_manager)
{
    m_main_manager = main_manager;
    m_is_running = true;
}

List_manager::~List_manager()
{
    //dtor
}

void List_manager::init()
{
	Location base_location;
	m_locations.push_back(base_location);
	auto iter = m_locations.begin();
	m_world_map.init(&*iter);
}

void List_manager::stop()
{
    m_is_running = false;
}

Day_list* List_manager::get_day_list() 
{
    return &m_day_list;
}

World_map * List_manager::get_world_map()
{
	return &m_world_map;
}

void List_manager::add_location(Location location)
{
	m_locations.push_back(location);
}

Location * List_manager::get_new_location()
{
	Location new_location;
	m_locations.push_back(new_location);
	return &*(m_locations.rbegin());
}
