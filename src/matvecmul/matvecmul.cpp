#include <iostream>
using namespace std;

int main() {

  int lena=10000;
  int lenb=35000;

  double* a = new double[lena];
  double** b = new double*[lena];
  double* c = new double[lenb];

  //initialization
  for(int i=0;i<lena;i++)
  {
    b[i] = new double[lenb];
    for(int j=0;j<lenb;j++)
    {
      b[i][j]=j;
      c[j]=1.0;
    }
  }

  //a = B*c (columns)
  for(int i=0;i<lena;i++)
  {
    a[i]=0.0;
    for(int j=0;j<=lenb;j++)
      a[i]+=b[i][j] * c[j];
  }

  cout << a[0] << endl;

}
