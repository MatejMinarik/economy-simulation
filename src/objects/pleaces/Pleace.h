/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Pleace.h
 * Author: huvart
 *
 * Created on Pondelok, 2017, septembra 25, 22:24
 */

#ifndef PLEACE_H
#define PLEACE_H

enum Pleace_type{
    Pleace_none, settlement
};

struct Position{
    void set(unsigned int x, unsigned int y);
    unsigned int get_x();
    unsigned int get_y();
    unsigned int m_x;
    unsigned int m_y;
};



class Pleace{
public:
    Pleace();
    Pleace(Position position);
    Pleace(unsigned int x, unsigned int y);
    Pleace_type get_pleace_type();
    Position get_position();
protected:
    Pleace_type m_pleace_type;
    Position m_position;
};

#endif /* PLEACE_H */

