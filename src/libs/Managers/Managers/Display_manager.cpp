#include "Display_manager.h"
#include "Main_manager.h"
#include <iostream>
#include "../../Macro_settings.h"
//#include "GUI\Button.h"

Display_manager::Display_manager(Main_manager* main_manager)
{
    m_main_manager = main_manager;
    m_is_running = true;
	windiw_width = 1000;
	window_height = 1000;
	pleace_square = 10;
}

Display_manager::~Display_manager()
{
    //dtor
}


void Display_manager::init()
{    
    m_display_thread = std::thread(&Display_manager::display_thread_function, this);
	
	//m_main_window.se
}

void Display_manager::display_thread_function()
{
	//initialize window
	/*std::string program_name = PROGRAM_NAME;
	program_name.append(" ");
	program_name.append(PROGRAM_STATE);
	program_name.append(" ");
	program_name.append(to_string(PROGRAM_MAJOR_VERSION));
	program_name.append(".");
	program_name.append(to_string(PROGRAM_MINOR_VERSION));
	program_name.append(".");
	program_name.append(to_string(PROGRAM_PATCH_VERSION));
	m_main_window.create(sf::VideoMode(windiw_width + 40, window_height + 40), program_name);

    sf::CircleShape shape(120.f);
    shape.setFillColor(sf::Color::Green);

	m_display_local_map = m_main_manager->get_list_manager()->get_world_map()->get_local_map(Position(0,0));
	//Location new_location;
	//m_main_manager->get_list_manager()->add_location(new_location);
	Location* new_location = m_main_manager->get_list_manager()->get_new_location();
	new_location->set_color(sf::Color::Yellow);
	m_display_local_map->add(Position(21, 6), new_location);
	m_display_local_map->add(Position(22, 6), new_location);
	m_display_local_map->add(Position(23, 6), new_location);
	m_display_local_map->add(Position(21, 7), new_location);
	m_display_local_map->add(Position(22, 7), new_location);
	m_display_local_map->add(Position(23, 7), new_location);
	m_display_local_map->add(Position(22, 8), new_location);
	m_display_local_map->add(Position(23, 8), new_location);

	//loop
    while (m_main_window.isOpen() && m_is_running)
    {
        //i++;
        sf::Event event;
        while (m_main_window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
				m_main_window.close();
            if(event.type == sf::Event::KeyPressed){
                m_main_manager->exit_program();
            }
        }

		m_main_window.clear();
		draw_map(m_main_window);
		m_main_window.display();
    }*/

	//finish program
    if(m_is_running){
        m_main_manager->exit_program();
    }
    //if(m_main_window.isOpen()){
//		m_main_window.close();
  //  }

    return;
}


void Display_manager::stop()
{
    //if add some construction so thread could be stuck somewhere, need to add here some unstuck mechanism
    m_is_running = false;
    m_display_thread.join();
}

/*void Display_manager::draw_map(sf::RenderWindow& window)
{
	std::vector<Location *> locations = m_display_local_map->get_locations();
	local_grid_type grid = m_display_local_map->get_local_grid();
	int width_local = m_display_local_map->get_local_width();
	int height_local = m_display_local_map->get_local_height();
	sf::RectangleShape rectangle;
	rectangle.setSize(sf::Vector2f((int)pleace_square, (int)pleace_square));
	rectangle.setOutlineColor(sf::Color::Black);
	rectangle.setOutlineThickness(1);
	for (int i = 0; i < height_local; i++) {
		for (int j = 0; j < width_local; j++) {
			rectangle.setPosition(pleace_square * i + 20, pleace_square * j + 20);
			rectangle.setFillColor(locations.at( grid[j][i])->get_color());
			window.draw(rectangle);
		}
	}
}*/
