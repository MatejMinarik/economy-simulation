#pragma once

class Position
{
public:
	Position();
	Position(int x, int y);
	~Position();

	void set_x(int x);
	void set_y(int y);
	void set(int x, int y);
	int get_x();
	int get_y();


	friend bool operator<(const Position& lhs, const Position& rhs);
	friend bool operator>(const Position& lhs, const Position& rhs);
	bool operator<(const Position& orig);
	bool operator>(const Position& orig);
	bool operator<=(const Position& orig);
	bool operator>=(const Position& orig);
	bool operator==(const Position& orig);
private:
	int m_position_x;
	int m_position_y;
};


class Map_position
{
public:
	Map_position();
	Map_position(int global_x, int global_y, int local_x, int local_y);
	Map_position(Position global, Position local);
	~Map_position();


	double get_distance_to_map_position(Map_position);
	void set_global_positon(Position position);
	void set_global_positon(int x, int y);
	void set_global_positon_x(int x);
	void set_global_positon_y(int y);
	void set_local_positon(Position position);
	void set_local_positon(int x, int y);
	void set_local_positon(int x);
	void set_local_positon_y(int y);

	Position get_global_position();
	Position get_local_position();

private:
	Position m_global;
	Position m_local;
};

