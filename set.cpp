
template <typename BaseData>
std::ostream& operator<< (std::ostream& COUT, const set<BaseData>& SET){
               COUT<<"{";
            for(int i =0; i<SET.size;i++)
                 COUT<<SET.array[i]<<" ";
                 COUT<<"}";
                 return COUT;
        }
template <typename BaseData>
void set<BaseData> ::resize(int SIZE){ //Get rid of extra space 0s;
     this->size = SIZE;
}