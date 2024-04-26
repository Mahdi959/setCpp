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
set<BaseData> set<BaseData>::operator ||(set<BaseData>& SECOND){
    int tempSize= this->size + SECOND.size;//tempSize for size of the result
    set<BaseData>result(tempSize); //
    int k=0;//index of the result.array[]
    for(int j=0; j<this->size;j++){
         bool isCommon = false; //if number isCommon in both set;
        for(int i=0; i<SECOND.size;i++){
            if(this->array[j]==SECOND.array[i]){//if isCommon found;
                isCommon= true; 
                break;
            }
            
        }
        if(!isCommon){ //to avoid duplicates when adding Second set avoid isCommon numbers
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
    int tempSize2 =0;
    if(SECOND.size>this->size)
        tempSize2 = SECOND.size;
    else 
        tempSize2 = this->size;
    
    set<BaseData>temp(tempSize2);
    int k =0;
    for(int j=0; j<this->size;j++){
         bool isCommon = false;
        for(int i=0; i<SECOND.size;i++){
            if(this->array[j]==SECOND.array[i]){
                temp.array[i]= SECOND.array[i];
                isCommon= true;
                break;
            }
            
        }
        if(!isCommon){
         result.array[k]= this->array[j];
         k++;
        }
         
    }
    bool found = false;
    for(int j = 0; j<temp.size; j++){
        for (int i = 0; i<(SECOND.size);i++){
            if(temp.array[j]==SECOND.array[i])
               found = true;
        }
        if(!found){
            result.array[k]= SECOND.array[j]; 
            k++;
            
        }
        found = false;
         
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
         bool isCommon = false;
        for(int i=0; i<SECOND.size;i++){
            if(this->array[j]==SECOND.array[i]){
                isCommon= true;
                break;
            }
            
        }
        if(isCommon){
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
         bool isCommon = false;
        for(int i=0; i<SECOND.size;i++){
            if(this->array[j]==SECOND.array[i]){
                isCommon= true;
                break;
            }
            
        }
        if(!isCommon){
         result.array[k]= this->array[j];
          k++;}
    }
    result.resize(k); //get rid of extra space; 0s
    return result;
}
#endif