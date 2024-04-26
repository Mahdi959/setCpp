#ifndef SET_T
#define SET_T

template<typename BaseData>
void set<BaseData>::add(BaseData number){
    if(count<size){ //if there's space
        array[count]=number;//add number to the set
        count++;
    }  
}
template<typename BaseData>
bool set<BaseData>:: isCommon(set<BaseData>& SECOND,int j){
              //if number isCommon in both set;
            for(int i=0; i<SECOND.size;i++){
                if(this->array[j]==SECOND.array[i]){//if isCommon found;
                   return true;
                }
            }
            return false;
        }
template<typename BaseData>
set<BaseData> set<BaseData>::operator ||(set<BaseData>& SECOND){
    int tempSize= this->size + SECOND.size;//tempSize for size of the result
    set<BaseData>result(tempSize); //
    int k=0;//index of the result.array[]
    for(int j=0; j<this->size;j++){
         
        if(!isCommon(SECOND,j)){ //to avoid duplicates when adding Second set avoid isCommon numbers
        result.array[k]= this->array[j];
         k++; //result.array[]'s index/ size
        }
    }
     for (int i = 0; i<(SECOND.size);i++){//get all values from SECOND set.
        result.array[k]= SECOND.array[i]; 
        k++;
    }
    result.resize(k);//get rid of extra space; 0s
    return result;
}
template <typename BaseData>
set<BaseData> set<BaseData>:: operator / (set<BaseData>& SECOND){
   int tempSize= this->size + SECOND.size;
    set<BaseData>result(tempSize);

    int k =0;
    for(int j=0; j<this->size;j++){
       if(!isCommon(SECOND,j)){
         result.array[k]= this->array[j];
         k++;
        }   
    }
    // for(int j=0; j<this->size;j++){
    //    if(!isCommon(SECOND,j)){
    //      result.array[k]= SECOND.array[j];
    //      k++;
    //     }   
    // }
    for(int j=0; j<SECOND.size;j++){
         bool isCommon = false;
        for(int i=0; i<this->size;i++){
            if(this->array[i]==SECOND.array[j]){
                isCommon= true;
                break;
            }
            
        }
        if(!isCommon){
         result.array[k]= SECOND.array[j];
         k++;
        }
         
    }
    result.resize(k);//get rid of extra space; 0s
    return result;
} 

template <typename BaseData>
set<BaseData> set<BaseData>:: operator && (set<BaseData>& SECOND) {
    int tempSize= this->size + SECOND.size;
    set<BaseData>result(tempSize);
    int k = 0;
    for(int j=0; j<this->size;j++){
        if(isCommon(SECOND,j)){
        result.array[k]= this->array[j];
         k++;
        }
    }
    result.resize(k);//get rid of extra space; 0s
   return result;
}
 
template <typename BaseData>
set<BaseData> set<BaseData>:: operator - (set<BaseData>& SECOND) {
     int tempSize= this->size + SECOND.size;//temporary size for result;
    set<BaseData>result(tempSize);//intiating with a safe size;
    int k =0;
    for(int j=0; j<this->size;j++){

        if(!isCommon(SECOND,j)){
         result.array[k]= this->array[j];
          k++;}
    }
    result.resize(k); //get rid of extra space; 0s
    return result;
}
#endif