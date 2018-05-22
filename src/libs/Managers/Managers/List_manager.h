#ifndef LIST_MANAGER_H
#define LIST_MANAGER_H

#include "../process_structure/Day_list.h"
#include "../../objects/map/World_map.h"
#include <list>

class Main_manager;

class List_manager
{
    public:
        List_manager(Main_manager* main_manager);
        virtual ~List_manager();


        void init();
        void stop();
        
        Day_list* get_day_list();
		World_map* get_world_map();
		void add_location(Location location);
		Location* get_new_location();
    protected:

    private:
        bool m_is_running;
        Main_manager* m_main_manager;
        
        
        Day_list m_day_list;
		World_map m_world_map;
		std::list<Location> m_locations;
};

#endif // LIST_MANAGER_H
