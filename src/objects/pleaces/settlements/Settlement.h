/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Settlement.h
 * Author: huvart
 *
 * Created on Pondelok, 2017, septembra 25, 22:32
 */

#ifndef SETTLEMENT_H
#define SETTLEMENT_H

#include "../Pleace.h"
#include "../../characters/Population.h"

enum Settlement_type{
    Settlement_none, Isolated_dwelling, Hamlet, Village, Town, City, Suburbs, Farm
};

class Settlement: public Pleace {
public:
    Settlement();
    Settlement(Position position);
    Settlement(unsigned int x, unsigned int y);
    Settlement(Pleace pleace);
    virtual Settlement_type get_settlement_type();
protected:
    Settlement_type m_settlement_type;
    Population m_population;
private:
    basic_setup();
};

#endif /* SETTLEMENT_H */

