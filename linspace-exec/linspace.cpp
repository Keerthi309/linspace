/*The C++ API Implementation of linspace op using other default ops in Pytorch*/
#include <torch/torch.h> //Header file of torch library
#include <iostream>     //Default C++ Header

int linspace(float start1[], float end1[], float steps1[], int size1) { //Recursive Function call of linspace
  int n = size1;                               
  for(int i=0; i<n; i++){
    if(n==1){                           //Without the if condition when n value is 1 temp throws inf error 
      float a = start1[i];
      torch::Tensor result = torch::tensor({a});
      torch::Tensor result1=torch::linspace(start1[i],end1[i],steps1[i]);
      std::cout << result << std::endl;       //When n value is 1 it returns the default input tensor
      std::cout << result1 << std::endl;
      bool check = torch::equal(result, result1); //Checking the result of the in-built linspace function and the user defined linspace function
      std::cout << check << std::endl; 
    }                                              //end if
    else{
      float temp[i];                              //Variable to store the calculated value
      temp[i] = (end1[i]-start1[i])/(steps1[i]-1);
      torch::Tensor result = torch::arange(start1[i], end1[i]+temp[i]/2, temp[i]); //arange is in-built function of pytorch with range [x,y)
      torch::Tensor result1=torch::linspace(start1[i],end1[i],steps1[i]);         //In-built linspace function of pytorch
      std::cout << result << std::endl;
      std::cout << result1 << std::endl;
      bool check = torch::equal(result, result1);      //Compares the result of the in-built linspace function and the user defined linspace function
      std::cout << check << std::endl;
    }                                               //end else
  }                                                 //end for loop
  return 0;          //As the function return type is integer
}                    // end linspace function

int main() {
  float start[]={3, -10, -10, -5, 0, 200, 1795, 595, -14350},end[]={10, 10, 10, 5, 10, 218, 1834, 612, -12560},steps[]={5, 5, 2, 11, 2, 32, 39, 37, 499}; //Multiple inputs stored in array
  int size = sizeof(start)/sizeof(start[0]);              //Calculates the size of array to use as an argument in for loop
  linspace(start,end,steps,size);                          //Function call of linspace
  return 0;
}

  
