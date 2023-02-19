subroutine shell_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: gap, i, j, temp

    gap = n / 2
    do while (gap > 0)
        do i = gap + 1, n
            temp = ary(i)
            j = i
            do while (j > gap .and. ary(j - gap) > temp)
                ary(j) = ary(j - gap)
                j = j - gap
            end do
            ary(j) = temp
        end do
        gap = gap / 2
    end do

end subroutine shell_sort
