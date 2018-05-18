#include "World_map.h"

#include <iostream>

World_map::World_map() :m_world_global_height(10), m_world_global_width(10)
{
	m_was_init = false;
	
}

World_map::World_map(int width, int height):m_world_global_height(height),m_world_global_width(width)
{
	m_was_init = false;
}


World_map::~World_map()
{
	if (m_was_init) {
		for (int i = 0; i < m_world_global_width; i++) {
			for (int j = 0; j < m_world_global_height; j++) {
				delete (m_global_grid[i][j]);
			}
		}
	}
}

void World_map::init(Location * location)
{
	if (!m_was_init) {
		m_was_init = true;
		m_global_grid.resize(boost::extents[m_world_global_width][m_world_global_height]);
		for (int i = 0; i < m_world_global_width; i++) {
			for (int j = 0; j < m_world_global_height; j++) {
				m_global_grid[j][i] = new Local_map();
				m_global_grid[j][i]->init(location);
			}
		}
	}
}

Local_map * World_map::get_local_map(Position global_position)
{
	return m_global_grid[global_position.get_x()][global_position.get_y()];
}

Location::Location()
{
	m_color = sf::Color(109, 168, 74, 255);
}

Location::~Location()
{
}

sf::Color Location::get_color()
{
	return m_color;
}

void Location::set_color(sf::Color color)
{
	m_color = color;
}

Local_map::Local_map() :m_world_local_height(100), m_world_local_width(100)
{

}

Local_map::Local_map(int width, int height) : m_world_local_height(height), m_world_local_width(width)
{

}

Local_map::~Local_map()
{

}

void Local_map::init(Location * location)
{
	m_local_grid.resize(boost::extents[m_world_local_width][m_world_local_height]);
	m_local_locations.clear();
	m_local_locations.push_back(location);
	for (int i = 0; i < m_world_local_width; i++) {
		for (int j = 0; j < m_world_local_height; j++) {
			m_local_grid[i][j] = 0;
		}
	}
}

void Local_map::add(Position position, Location * location)
{
	int location_number = -1;
	for (int i = 0; i < m_local_locations.size(); i++) {
		if (m_local_locations.at(i) == location) {
			location_number = i;
		}
	}
	if (location_number == -1) {
		location_number = m_local_locations.size();
		m_local_locations.push_back(location);
	}
	m_local_grid[position.get_x()][position.get_y()] = location_number;
}

std::vector<Location*> Local_map::get_locations()
{
	return m_local_locations;
}

local_grid_type Local_map::get_local_grid()
{
	return m_local_grid;
}

int Local_map::get_local_width()
{
	return m_world_local_width;
}

int Local_map::get_local_height()
{
	return m_world_local_height;
}
