/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   Character.cpp
 * Author: huvart
 * 
 * Created on Utorok, 2017, septembra 26, 23:53
 */

#include "Character.h"
#include <iostream>



//nobel

template<>
void Character<Character_type::nobel>::consumption() {
    std::cout << "hi" << std::endl;
}

template<>
Character<Character_type::nobel>::Character() {

}

template<>
void Character<Character_type::nobel>::do_stuff() {

}

template<>
Character_type Character<Character_type::nobel>::get_type() {
    return Character_type::nobel;
}

template<>
void Character<Character_type::nobel>::init() {

}

template<>
void Character<Character_type::nobel>::die() {

}

template<>
void Character<Character_type::nobel>::check_deth() {
    if(m_age >= m_die_age){
        die();
    }
}


//pesent

template<>
void Character<Character_type::pesent>::consumption() {
    std::cout << "hi" << std::endl;
}

template<>
Character<Character_type::pesent>::Character() {

}

template<>
void Character<Character_type::pesent>::do_stuff() {

}

template<>
Character_type Character<Character_type::pesent>::get_type() {
    return Character_type::pesent;
}

template<>
void Character<Character_type::pesent>::init() {

}

//merchant

template<>
void Character<Character_type::merchant>::consumption() {
    std::cout << "hi" << std::endl;
}

template<>
Character<Character_type::merchant>::Character() {

}

template<>
void Character<Character_type::merchant>::do_stuff() {

}

template<>
Character_type Character<Character_type::merchant>::get_type() {
    return Character_type::merchant;
}

template<>
void Character<Character_type::merchant>::init() {

}

//craftsman

template<>
void Character<Character_type::craftsman>::consumption() {
    std::cout << "hi" << std::endl;
}

template<>
Character<Character_type::craftsman>::Character() {

}

template<>
void Character<Character_type::craftsman>::do_stuff() {

}

template<>
Character_type Character<Character_type::craftsman>::get_type() {
    return Character_type::craftsman;
}

template<>
void Character<Character_type::craftsman>::init() {

}