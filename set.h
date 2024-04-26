#ifndef SET_H
#define SET_H
#include <iostream>


template <typename BaseData>
class set{
    private:
       
        int count;
        

    public:
     int size;
    BaseData * array;
         set()=delete;//{
        //     this->size=0;
        //     this->count=0;
        //     array = nullptr;
        // }
        set(int size){
            this->size = size;
            this->count=0;
            array = new BaseData[size];
        }
        void add(BaseData number);
        ~set(){
            delete[] array;
        }
       
        void resize(int SIZE);

         
        set<BaseData> operator && (set<BaseData>& SECOND);  
        set<BaseData> operator || (set<BaseData>& SECOND);   
        set<BaseData> operator / (set<BaseData>& SECOND);   
        set<BaseData> operator - (set<BaseData>& SECOND);   
        

};




#include "set.t"
#include "set.cpp"
#endif