
subroutine bubble_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, temp

    do i = 1, n - 1
        do j = 1, n - i
            if (ary(j) > ary(j+1)) then
                temp = ary(j)
                ary(j) = ary(j+1)
                ary(j+1) = temp
            end if
        end do
    end do
end subroutine bubble_sort
