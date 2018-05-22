/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Settlement_building.h
 * Author: huvart
 *
 * Created on Utorok, 2017, septembra 26, 22:41
 */

#ifndef SETTLEMENT_BUILDING_H
#define SETTLEMENT_BUILDING_H

enum Settlement_building_type{
    market, farm, mill, house, shipyard, crafts_shop
};

class Settlement_building {
public:
    Settlement_building();
    Settlement_building(const Settlement_building& orig);
    virtual ~Settlement_building();
private:

};

#endif /* SETTLEMENT_BUILDING_H */

