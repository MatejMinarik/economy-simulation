/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Date.cpp
 * Author: huvart
 * 
 * Created on Nedeľa, 2017, októbra 1, 19:11
 */

#include "Date.h"

Date::Date() {
    m_days = 0;
}

Date::Date(const Date& orig) {
}

Date::~Date() {
}

Date::Date(unsigned long int days){
    set(days);
}

Date::Date(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch) {
    set(day, month, year, epoch);
}

unsigned int Date::get_day() {
    return m_days % DAYS_IN_MONTH;
}

unsigned int Date::get_epoch() {
    return 0;
}

unsigned int Date::get_month() {
    return (m_days / DAYS_IN_MONTH) % MONTHS_IN_YEAR;
}

unsigned long int Date::get_raw_date() {
    return m_days;
}

unsigned int Date::get_year() {
    return m_days / (DAYS_IN_MONTH * MONTHS_IN_YEAR);
}

void Date::set(unsigned long int days) {
    m_days = days;
}

void Date::set(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch) {
    set(days_from_date(day, month, year, epoch));
}

unsigned long int Date::days_from_date(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch) {
    //epoch will be added
    //TO DO : add epoch calculation
    unsigned long int tmp = year;
    tmp *= MONTHS_IN_YEAR;
    tmp += month;
    tmp *= DAYS_IN_MONTH;
    tmp += day;
    return tmp;
}
