#include "set.h"


int main(){
    set<int> A(3);
	set<int> B(4);
	set<int> C(2);
	

	A.add(1);A.add(3);A.add(8);
	B.add(2);B.add(3);B.add(5);B.add(10);
	C.add(4);C.add(6);

	// A.writeSet();
	// B.writeSet();
	// C.writeSet();
	std::cout<<"A: "<<A<<std::endl;std::cout<<"B: "<<B<<std::endl;std::cout<<"C: "<<C<<std::endl;
	std::cout << "A && B: " << (A && B) << std::endl;
	std::cout << "A - B: " << (A - B) << std::endl;
	std::cout << "A || B: " << (A || B) << std::endl;
	std::cout << "A / B: " << (A / B) << std::endl;
	std::cout << "A && C: " << (A && C) << std::endl;
	 std::cout << "A - C: " << (A - C) << std::endl;
	std::cout << "A || C: " << (A || C) << std::endl;
	std::cout << "A / C: " << (A / C) << std::endl;
	

	

};