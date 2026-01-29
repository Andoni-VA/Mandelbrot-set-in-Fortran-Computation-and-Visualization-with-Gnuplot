program mandelbrot

        use mcf_tipos

        real(kind=dp) :: h , x , y , x1 , y1 , x2 , y2
        real(kind=dp) , parameter :: xa=-2.0_dp , xb=2.0_dp , ya=-2.0_dp , yb=2.0_dp
        integer , parameter :: N=1500 , imax=150
        integer :: i , j , k , eat

        h = (xb-xa)/(N-1)

        open(unit=11,file="mandelbrot.dat",status="replace",action="write")

        do i=1,N

        x = h*(i-1) + xa

        do j=1,N

        y = h*(j-1) + ya

        x1=0.0_dp
        x2=0.0_dp
        y1=0.0_dp
        y2=0.0_dp

        do k=1,imax

        y1 = 2.0_dp * x1 * y1 + y
        x1 = x2 - y2 + x
        x2 = x1 * x1
        y2 = y1 * y1

        if ((x2 + y2) > 4.0_dp) then
                eat = k
                exit
        end if

        end do

        write(unit=11,fmt="(2es16.8,i4)") x , y , k

        end do

        end do

        close(11)

        print*, "Calculation complete. The mandelbrot.dat document has been created to record the values of the mandelbrot set."

end program mandelbrot

