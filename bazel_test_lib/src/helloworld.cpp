#include "helloworld.h"

#include <iostream>
#include <string>

struct SayMachine {
public:
  void say() const {
    std::cout << name << std::endl;
  }

private:
  const std::string name;
};

SayMachineRef make_machine(const char* name) {
  return new SayMachine;
}

void say_machine(const SayMachineRef machine) {
  machine->say();
}

void destory_machine(SayMachineRef machine) {
  delete machine;
}
