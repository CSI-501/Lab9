program centraldiff
  ! Nicholas Maynard
  ! CSI 501
  ! Lab 9
  ! 03/30/2023
  ! This program computes the central difference derivative for a function.

  ! Clear out the memory
  implicit none

  ! Declare our Variables
  real :: x, h, yprime, Func
  integer :: i

  ! Ask the user for our input variables
  print*,'Enter a number x:'
  read*, x
  print*,'Enter a number h:'
  read*, h

  yprime = (Func(x+h) - Func(x-h)) / (2*h)
  print*, "f'(x) is: ", yprime

  ! Open our output file that will hold our values
  open(13,file='Output.txt')

  ! Calculate our derivative across 0 - 4.0
  do i = 0, int(4.0/h)
    ! Generate the x value we will use spaced apart by value h
    x = float(i) * h
    ! Generate our computed derivative
    yprime = (Func(x+h) - Func(x-h)) / (2*h)
    ! Write to our file
    write(13, *) x, yprime
  enddo



end program centraldiff

function Func(x) result(y)
  ! Remove space in memory
  implicit none
  ! Initialize variables for the function
  real :: x, y

  ! Create our function
  y = cos(x) * (x**3 - 3*x**2)

end function
