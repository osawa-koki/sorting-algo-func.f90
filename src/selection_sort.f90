
subroutine selection_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, min, tmp

    do i = 1, n - 1
        min = i
        do j = i + 1, n
            if (ary(j) < ary(min)) then
                min = j
            end if
        end do
        tmp = ary(i)
        ary(i) = ary(min)
        ary(min) = tmp
    end do

end subroutine selection_sort
