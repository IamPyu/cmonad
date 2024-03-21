import std.stdio;

extern (C) {
  void helloD() {
    writeln("Hello, world! From D!");
  }
}
