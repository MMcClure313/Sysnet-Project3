# Compiler
CXX = g++

# Executable name
CXXFLAGS = -Wall -Wextra -g -std=c++11 -pthread

.PHONY: clean


lizard:
	$(CXX) $(CXXFLAGS) lizard.cpp -o lizard

lizard.o: lizard.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o lizard
cleanAll:
	rm -f *.o lizard *.csv