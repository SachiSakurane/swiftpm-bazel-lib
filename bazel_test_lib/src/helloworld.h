#pragma once

#include <string>

class SayMachine {
  public:
  void say() const;

  private:
  const std::string name;
};

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

  SayMachine* make_machine(const char* name);
  void say(const SayMachine* machine);
  void destory_machine(SayMachine* machine);

#ifdef __cplusplus
}  // extern "C"
#endif  // __cplusplus
