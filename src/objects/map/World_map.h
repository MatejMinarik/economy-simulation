#pragma once

#include <boost\multi_array.hpp>
#include "Map_position.h"
#include "SFML\Graphics.hpp"

typedef boost::multi_array<int, 2> local_grid_type;

class Location 
{
public:
	Location();
	~Location();
	sf::Color get_color();
	void set_color(sf::Color color);
private:
	std::string m_name;
	std::vector<Position> m_global_position;
	sf::Color m_color;
};

class Local_map
{
public:
	Local_map();
	Local_map(int width, int height);
	~Local_map();
	void init(Location * location);
	void add(Position position, Location* location);
	std::vector<Location *> get_locations();
	local_grid_type get_local_grid();
	int get_local_width();
	int get_local_height();
private:
	std::vector<Location *> m_local_locations;
	local_grid_type m_local_grid;
	const int m_world_local_width;
	const int m_world_local_height;
	bool m_all_filed;
};

typedef boost::multi_array<Local_map*, 2> global_grid_type;

class World_map
{
public:
	World_map();
	World_map(int width, int height);
	~World_map();
	void init(Location * location);
	Local_map* get_local_map(Position global_position);
private:
	global_grid_type m_global_grid;
	const int m_world_global_width;
	const int m_world_global_height;
	bool m_was_init;
};

