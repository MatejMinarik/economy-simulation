#ifndef DISPLAY_MANAGER_H
#define DISPLAY_MANAGER_H

class Main_manager;
#include <thread>
#include "SFML/Graphics.hpp"
#include "../objects/map/World_map.h"

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
        bool m_is_running;
        Main_manager* m_main_manager;
        sf::RenderWindow m_main_window;

		int windiw_width ;
		int window_height;
		int pleace_square;

		Local_map* m_display_local_map;
		void draw_map(sf::RenderWindow& window);
};

#endif // DISPLAY_MANAGER_H
