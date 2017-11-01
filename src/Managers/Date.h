/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Date.h
 * Author: huvart
 *
 * Created on Nedeľa, 2017, októbra 1, 19:11
 */

#ifndef DATE_H
#define DATE_H

#include <vector>

#define DAYS_IN_WEEK 7
#define DAYS_IN_MONTH 30
#define MONTHS_IN_YEAR 12

using namespace std;

class Date {
public:
    Date();
    Date(const Date& orig);
    Date(unsigned long int days);
    Date(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch);
    
    void set(unsigned long int days);
    void set(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch);
    unsigned long int get_raw_date();
    unsigned int get_day();
    unsigned int get_month();
    unsigned int get_year();
    unsigned int get_epoch();   //work in progress, always 0;
    
    void next_day();
    void previous_day();
    void next_month();
    void previous_month();
    void next_year();
    void previous_year();
    void next_week();
    void previous_week();
    
    Date get_copy();
    Date get_day_after(unsigned long int days);
    Date get_day_before(unsigned long int days);
    
    bool operator == (const Date date) const;
    bool operator < (const Date date) const;
    bool operator > (const Date date) const;
    
    static Date date_difference(Date date1, Date date2);
    
    virtual ~Date();
private:
    unsigned long int days_from_date(unsigned char day, unsigned char month, unsigned int year, unsigned int epoch);
    
    
    unsigned long int m_days;
    
    /*
    unsigned char m_day;
    unsigned char m_month;
    unsigned int m_year;
    unsigned int m_epoch;
     */
    
    static vector<unsigned int> m_epoch_length;
};

#endif /* DATE_H */

