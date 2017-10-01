/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "Settlement.h"

Settlement::Settlement() {
    basic_setup();
}

Settlement::Settlement(Position position):Pleace(position) {
    basic_setup();
}

Settlement::Settlement(unsigned int x, unsigned int y):Pleace(x, y) {
    basic_setup();
}

Settlement::Settlement(Pleace pleace):Pleace(pleace){
    basic_setup();
}

Settlement_type Settlement::get_settlement_type() {
    return m_settlement_type;
}

int Settlement::basic_setup() {
    m_settlement_type = Settlement_type::Settlement_none;
    m_pleace_type = Pleace_type::settlement;
}

