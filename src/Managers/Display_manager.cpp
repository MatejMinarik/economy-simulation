#include "Display_manager.h"
#include "Main_manager.h"
#include <iostream>
#include "SFML/Graphics.hpp"

Display_manager::Display_manager(Main_manager* main_manager)
{
    m_main_manager = main_manager;
    is_running = true;
}

Display_manager::~Display_manager()
{
    //dtor
}


void Display_manager::init()
{
    m_display_thread = std::thread(&Display_manager::display_thread_function, this);
}

void Display_manager::display_thread_function()
{
    std::cout << "-05" << std::endl;
    sf::RenderWindow window(sf::VideoMode(200, 200), "SFML works!");
    sf::CircleShape shape(120.f);
    shape.setFillColor(sf::Color::Green);

    std::cout << "-06" << std::endl;
    //boost::regex pat( "^Subject: (Re: |Aw: )*(.*)" );

    //boost::array<int, 5> g_array;
    int i=0;
    while (window.isOpen() && is_running)
    {
        //std::cout << "-07   ---   " << i << std::endl;
        i++;
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
            if(event.type == sf::Event::KeyPressed){
                m_main_manager->exit_program();
                std::cout << "-09   -+++ " << i << std::endl;
            }
        }

        window.clear();
        window.draw(shape);
        window.display();
    }
    if(is_running){
        m_main_manager->exit_program();
    }
    if(window.isOpen()){
        window.close();
    }


    return;
}


void Display_manager::stop()
{
    //if add some construction so thread could be stuck somewhere, need to add here some unstuck mechanism
    is_running = false;
    m_display_thread.join();
}
