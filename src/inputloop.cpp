#include <iostream>
#include <string>

#define INPUT_SIZE 256 

void input_loop() {
    std::string input;
    while (true) {

        std::cout << "Enter anything: " << std::endl;
        std::cin >> input;
        std::cout << "Your input is: " << input << std::endl;
    }
}