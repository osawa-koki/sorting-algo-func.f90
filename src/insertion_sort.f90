
subroutine insertion_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, tmp

    do i = 2, n
        tmp = ary(i)
        j = i - 1
        do while (j > 0 .and. ary(j) > tmp)
            ary(j + 1) = ary(j)
            j = j - 1
        end do
        ary(j + 1) = tmp
    end do

end subroutine insertion_sort
