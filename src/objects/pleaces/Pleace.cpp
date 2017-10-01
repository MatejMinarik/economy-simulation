/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "Pleace.h"

void Position::set(unsigned int x, unsigned int y) {
    m_x = x;
    m_y = y;
}

unsigned int Position::get_x() {
    return m_x;
}

unsigned int Position::get_y() {
    return m_y;
}


Pleace::Pleace() {
    m_pleace_type = Pleace_type::Pleace_none;
    m_position.set(0, 0);
}

Pleace::Pleace(Position position) {
    m_pleace_type = Pleace_type::Pleace_none;
    m_position = position;
}

Pleace::Pleace(unsigned int x, unsigned int y) {
    m_pleace_type = Pleace_type::Pleace_none;
    m_position.set(x, y);
}

Pleace_type Pleace::get_pleace_type() {
    return m_pleace_type;
}

Position Pleace::get_position() {
    return m_position;
}
