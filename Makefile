all: testrecipe
	@echo "CXX: ${CXX}"
	@echo "CXXFLAGS: ${CXXFLAGS}"

testrecipe: testrecipe.o
	$(CXX) $(LDFLAGS) testrecipe.cpp -o testrecipe

testrecipe.o: testrecipe.cpp
	$(CXX) -c testrecipe.cpp -o testrecipe.o

clean:
	rm -f testrecipe
