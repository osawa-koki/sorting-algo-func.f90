
subroutine heap_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, k, t

    do i = 1, n
        j = i
        do while (j > 1)
            k = j / 2
            if (ary(k) < ary(j)) then
                t = ary(k)
                ary(k) = ary(j)
                ary(j) = t
                j = k
            else
                exit
            end if
        end do
    end do

    do i = n, 2, -1
        t = ary(1)
        ary(1) = ary(i)
        ary(i) = t
        j = 1
        do while (j < i)
            k = j * 2
            if (k < i) then
                if (ary(k) < ary(k + 1)) then
                    k = k + 1
                end if
            end if
            if (k < i) then
                if (ary(j) < ary(k)) then
                    t = ary(j)
                    ary(j) = ary(k)
                    ary(k) = t
                    j = k
                else
                    exit
                end if
            else
                exit
            end if
        end do
    end do

end subroutine heap_sort
