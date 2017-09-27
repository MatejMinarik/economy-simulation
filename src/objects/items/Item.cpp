/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "Item.h"
#include <iostream>

Item::Item() {
    m_item_type = Item_type::none;
}

Item::Item(Item_type type) {
    m_item_type = type;
}

double Item::get_base_price() {
    return -1;
}

Item_type Item::get_item_type() {
    return m_item_type;
}

void Item::add(char quality, long int amount){
    auto item_quality = m_quality_amount.find(quality);
    if(item_quality != m_quality_amount.end()){
        //item already contain this quality
        long int previous_amount = item_quality->second;
        m_quality_amount.at(quality) = previous_amount + amount;
    }else{
        //new quality of this item
        m_quality_amount.insert(std::pair<char, long int>(quality, amount));
    }
}

void Item::add(Item item) {
    for(auto i = item.m_quality_amount.begin(); i != item.m_quality_amount.end(); i++){
        add(i->first, i->second);
    }      
}

bool Item::sub(char quality, long int amount) {
    auto item_quality = m_quality_amount.find(quality);
    if(item_quality != m_quality_amount.end()){
        //item already contain this quality
        long int previous_amount = item_quality->second;
        if(previous_amount - amount > 0){
            m_quality_amount.at(quality) = previous_amount - amount;
        }else if(previous_amount - amount == 0){
            m_quality_amount.erase(quality);
        }else{
            return false;
        }
    }else{
        //new quality of this item
        return false; 
    }
    return true;
}

bool Item::sub(Item item) {    
    auto back_up = m_quality_amount;
    for(auto i = item.m_quality_amount.begin(); i != item.m_quality_amount.end(); i++){
        if(!sub(i->first, i->second)){//error occurred
            m_quality_amount = back_up;
            return false;
        }
    } 
    return true;
}

std::map<char, long int> Item::get_quality_amout_map() {
    return m_quality_amount;
}

float Item::get_avereage_quality() {
    int sum = 0;
    char num_different_quality = 0;
    for(auto i = m_quality_amount.begin(); i != m_quality_amount.end(); i++){
        sum += i->first;
        num_different_quality++;
    }
    return sum / (float)num_different_quality;
}

char Item::get_median_quality() {
    long int total_amout = get_total_amount();
    long int to_middle = total_amout / 2;
    if(total_amout % 2 == 0){ //is even
        for(auto i = m_quality_amount.begin(); i != m_quality_amount.end(); i++){
            to_middle -= i->second;
            if(to_middle < 0){
                return i->first;
            }else if(to_middle == 0){//need to get second number and make average of these two
                char first_median = i->first;
                i++;
                char second_median = i->first;
                return (first_median + second_median) / 2; 
            }
        }
    }else{//is odd
       for(auto i = m_quality_amount.begin(); i != m_quality_amount.end(); i++){
            to_middle -= i->second;
            if(to_middle < 0){
                return i->first;
            }
        } 
    }
    return -1;//error occurred
}

long int Item::get_total_amount() {
    long int sum = 0;
    for(auto i = m_quality_amount.begin(); i != m_quality_amount.end(); i++){
        sum += i->second;
    }
    return sum;
}

double Item::get_weighted_average_quality() {
    double sum = 0;
    long int total_amount = 0;
    for(auto i = m_quality_amount.begin(); i != m_quality_amount.end(); i++){
        sum += i->second * i->first;
        total_amount += i->second;
    }
    return sum / total_amount;
}

bool Item::is_empty() {
    return m_quality_amount.empty();
}






