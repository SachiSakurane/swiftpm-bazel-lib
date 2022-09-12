import CppCoreLib

class WrappedSayMachine {
  var machine = make_machine("hello, hello")

  deinit {
    destory_machine(machine)
  }

  func say() {
    say_machine(machine)
  }
}
