all:
	mkdir	./build 
	cd	./build
	# cmake -G "Unix Makefiles" ../source
	cmake ..
	cmake --build . --config Release --target SLA_equations
