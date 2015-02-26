#include <iostream>
using namespace std;

double arc(double x);
const long int num_steps=1000000000;
double step;
int main()
{
  double pi, sum=0.0;
  step=1.0/(double) num_steps;

#pragma omp parallel for reduction(+:sum)
  for (int i=0;i<=num_steps;i++)
  {
    double x=(i+0.5)*step;
    sum+= arc(x);
  }
  pi = sum*step;

  cout.precision(10);
  cout << "pi is probably " 
    << fixed << pi << endl;

  return 0;
}
double arc(double x)
{
  double y = 4.0/(1+x*x);
  return y;
}
