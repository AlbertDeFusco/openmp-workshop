program matvec
  implicit none
  integer(kind=4):: n , m
  real (kind=8):: a(1:1000), b(1:10000,1:35000), c(1:35000)
  integer(kind=4):: i, j

  n=10000
  m=35000

  do i=1,m
    c(i)=2.0
    do j=1,n
      b(i,j) = j
    enddo
  enddo

  do i = 1, m
    a(i) = 0.0
    do j = 1, n
      a(i) = a(i) + b(i,j)*c(j)
    enddo
  enddo

  write(6,*) a(1)
end program matvec
