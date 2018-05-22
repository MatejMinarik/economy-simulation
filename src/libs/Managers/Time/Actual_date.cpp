/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Actual_date.cpp
 * Author: huvart
 * 
 * Created on Nedeľa, 2017, októbra 1, 22:22
 */

#include "Actual_date.h"

Date Actual_date::m_actual_date = Date();

Date Actual_date::get_actual_date() {
    return m_actual_date;
}

bool Actual_date::is_after_actual_date(Date date) {
    return m_actual_date < date;
}

bool Actual_date::is_before_actual_date(Date date) {
    return m_actual_date > date;
}

void Actual_date::next_date() {
    m_actual_date.next_day();
}

void Actual_date::set_date(Date date) {
    m_actual_date.set(date.get_raw_date());
}

bool Actual_date::is_actual_date(Date date) {
    return m_actual_date == date;
}
