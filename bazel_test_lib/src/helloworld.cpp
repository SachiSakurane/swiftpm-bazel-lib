#include "helloworld.h"

#include <iostream>

void SayMachine::say() const {
  std::cout << name << std::endl;
}

SayMachine* make_machine(const char* name) {
  return new SayMachine;
}

void say(const SayMachine* machine) {
  machine->say();
}

void destory_machine(SayMachine* machine) {
  delete machine;
}
