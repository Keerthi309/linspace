/*The C++ API Implementation of fmod op using other default ops in Pytorch*/
#include <torch/torch.h> //Header file of torch library
#include <iostream>     //Default C++ Header#include <torch/torch.h>

int fmod_(torch::Tensor input, torch::Tensor other) {        
  torch::Tensor temp = torch::div(input, other, "trunc");    //div is in-built function of pytorch to perform division with rounding mode set as trunc
  torch::Tensor flag = torch::mul(temp, other);              //mul is in-built function of pytorch to perform multiplication of two tensors
  torch::Tensor result = torch::sub(input, flag);               //sub is in-built function of pytorch to perform subtraction of two tensors
  torch::Tensor result1=torch::fmod(input, other);           //fmod is in-built function of pytorch to get the remainder when a tensor is divided with another tensor or scalar
  std::cout << result << std::endl;
  std::cout << result1 << std::endl;
  bool check = torch::equal(result, result1);                //Compares the result of the in-built fmod function and the user defined fmod function
  std::cout << check << std::endl;
  return 0;
}                                                            //end fmod_ function

int main() {
  torch::Tensor input1 = torch::tensor({-3, -2, -1, 1, 2, 3});           /*Multiple inputs as tensor*/
  torch::Tensor other1 = torch::tensor(2);
  torch::Tensor input2 = torch::tensor({1, 2, 3, 4, 5});
  torch::Tensor other2 = torch::tensor({1.5});
  torch::Tensor input3 = torch::tensor({5, 6, 7, 4});
  torch::Tensor other3 = torch::tensor({3});
  torch::Tensor input4 = torch::tensor({6, 12, 18, 24, 30});
  torch::Tensor other4 = torch::tensor({6});
  torch::Tensor input5 = torch::tensor({2456, 89351, -16543, 79065, -41872});
  torch::Tensor other5 = torch::tensor({1854, 6245, 731, 595, 9087});
  torch::Tensor input6 = torch::tensor({19, 25, 53, 72, 98});
  torch::Tensor other6 = torch::tensor({11, 17, 41, 67, 89});
  torch::Tensor input7 = torch::tensor({-5, 18, -49, 81, -121});
  torch::Tensor other7 = torch::tensor({5, 6, 7, 9, 11});
  torch::Tensor input8 = torch::tensor({123, 456, 789, -321, -654, -987});
  torch::Tensor other8 = torch::tensor({12, 45, 78, -32, -65, -98});
  fmod_(input1,other1);                                                      //recursive call of fmod_ function
  fmod_(input2,other2);                                                      //User defined function cannot be named as fmod as it reverts back to in-built fmod function of pytorch which throws an error
  fmod_(input3,other3);
  fmod_(input4,other4);
  fmod_(input5,other5);
  fmod_(input6,other6);
  fmod_(input7,other7);
  fmod_(input8,other8);
  return 0;
}
