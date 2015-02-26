program integratePi

  implicit none
  integer(kind=8) :: num_steps,i
  real(kind=8) :: sum,step,pi,x

  num_steps=1000000000
  sum=0.d0
  step=1.d0/num_steps

  call helloworld

  !$omp parallel do &
  !$omp private(x) &
  !$omp reduction(+:sum)
  do i=1,num_steps
    x=(i+0.5d0)*step
    sum=sum+arc(x)
  enddo
  !$omp end parallel do


  pi=sum*step

  write(6, &
   '("pi is probably ",f12.10)') &
    pi

  contains
    function arc(x)
      implicit none
      real(kind=8) :: arc,x
      arc = 4.d0/(1.d0+x*x)
    end function arc

end program integratePi

subroutine hello.world
  implicit none
  write(6,*) 'hello'
end subroutine hello.world
