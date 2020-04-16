#include <iostream>
#include <string>
#include <fstream>
int main(){
	std::fstream fs,fsout;
	fs.open("dump.xyz",std::fstream::in);
	fsout.open("spin.dat",std::fstream::out);
	int cell=20;
	std::string temp;
	while(std::getline(fs,temp)){
	  if(temp.find("ITEM: ATOMS x y z")!=std::string::npos){
	     for(size_t i=0;i<cell*cell*cell;i++){
	       std::getline(fs,temp);
	     }
	     for(size_t i=0;i<cell*cell*cell;i++){
	       std::getline(fs,temp);
	     fsout<<temp<<std::endl;
	     }
	     for(size_t i=0;i<3*cell*cell*cell;i++){
	       std::getline(fs,temp);
	     }
	  }
	}
	fs.close();
	fsout.close();
}
