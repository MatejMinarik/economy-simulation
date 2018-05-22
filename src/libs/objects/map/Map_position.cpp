#include "Map_position.h"



Position::Position()
{
	m_position_x = 0;
	m_position_y = 0;
}

Position::Position(int x, int y)
{
	m_position_x = x;
	m_position_y = y;
}

Position::~Position()
{
}

void Position::set_x(int x)
{
	m_position_x = x;
}

void Position::set_y(int y)
{
	m_position_y = y;
}

void Position::set(int x, int y)
{
	m_position_x = x;
	m_position_y = y;
}

int Position::get_x()
{
	return m_position_x;
}

int Position::get_y()
{
	return m_position_y;
}

bool Position::operator<(const Position & orig)
{
	if (m_position_x != orig.m_position_x) {
		return m_position_x < orig.m_position_x;
	}
	else {
		return m_position_y < orig.m_position_y;
	}
}

bool Position::operator<=(const Position & orig)
{
	return !(this->operator>(orig));
}

bool Position::operator>(const Position & orig)
{
	if (m_position_x != orig.m_position_x) {
		return m_position_x > orig.m_position_x;
	}
	else {
		return m_position_y > orig.m_position_y;
	}
}

bool Position::operator>=(const Position & orig)
{
	return !(this->operator<(orig));
}

bool Position::operator==(const Position & orig)
{
	return (m_position_x == orig.m_position_x && m_position_y == orig.m_position_y);
}




Map_position::Map_position()
{
	m_global.set(0, 0);
	m_local.set(0, 0);
}

Map_position::Map_position(int global_x, int global_y, int local_x, int local_y)
{
	m_global.set(global_x, global_y);
	m_local.set(local_x, local_y);
}

Map_position::Map_position(Position global, Position local)
{
	m_global = global;
	m_local = local;
}


Map_position::~Map_position()
{
}

double Map_position::get_distance_to_map_position(Map_position)
{
	return 0.0;
}

void Map_position::set_global_positon(Position position)
{
	m_global = position;
}

void Map_position::set_global_positon(int x, int y)
{
	m_global.set(x, y);
}

void Map_position::set_global_positon_x(int x)
{
	m_global.set_x(x);
}

void Map_position::set_global_positon_y(int y)
{
	m_global.set_y(y);
}

void Map_position::set_local_positon(Position position)
{
	m_local = position;
}

void Map_position::set_local_positon(int x, int y)
{
	m_local.set(x, y);
}

void Map_position::set_local_positon(int x)
{
	m_local.set_x(x);
}

void Map_position::set_local_positon_y(int y)
{
	m_local.set_y(y);
}

Position Map_position::get_global_position()
{
	return m_global;
}

Position Map_position::get_local_position()
{
	return m_local;
}

bool operator<(const Position & lhs, const Position & rhs)
{
	if (lhs.m_position_x != rhs.m_position_x) {
		return lhs.m_position_x < rhs.m_position_x;
	}
	else {
		return lhs.m_position_y < rhs.m_position_y;
	}
}

bool operator>(const Position & lhs, const Position & rhs)
{
	if (lhs.m_position_x != rhs.m_position_x) {
		return lhs.m_position_x > rhs.m_position_x;
	}
	else {
		return lhs.m_position_y > rhs.m_position_y;
	}
}
