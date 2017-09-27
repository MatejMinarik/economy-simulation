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
    settlement
};

class Pleace{
public:
    Pleace();
    virtual Pleace_type get_pleace_type();
protected:
    
};

#endif /* PLEACE_H */

