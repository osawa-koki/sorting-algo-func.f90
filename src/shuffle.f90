
subroutine shuffle(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, temp
    real :: r
    do i = 1, n
        r = rand()
        j = int(r * n) + 1
        temp = ary(i)
        ary(i) = ary(j)
        ary(j) = temp
    end do
end subroutine shuffle
