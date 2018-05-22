/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Actual_date.h
 * Author: huvart
 *
 * Created on Nedeľa, 2017, októbra 1, 22:22
 */

#ifndef ACTUAL_DATE_H
#define ACTUAL_DATE_H

#include "Date.h"

class Actual_date {
public:
    static void set_date(Date date);
    static Date get_actual_date();
    static void next_date();
    static bool is_before_actual_date(Date date);
    static bool is_after_actual_date(Date date);
    static bool is_actual_date(Date date);
private:
    static Date m_actual_date;
};

#endif /* ACTUAL_DATE_H */

