
subroutine merge_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n

    integer :: i, j, k, l, r, m
    integer, dimension(n) :: tmp

    do i = 1, n, 2
        if (i == n) then
            tmp(i) = ary(i)
        else
            if (ary(i) < ary(i+1)) then
                tmp(i) = ary(i)
                tmp(i+1) = ary(i+1)
            else
                tmp(i) = ary(i+1)
                tmp(i+1) = ary(i)
            end if
        end if
    end do

    do i = 2, n, 2
        do j = 1, n-i, 2*i
            k = j
            l = j + i
            r = j + 2*i - 1
            m = l
            do while (k < l .and. m <= r)
                if (tmp(k) < tmp(m)) then
                    ary(j + k - j + m - l) = tmp(k)
                    k = k + 1
                else
                    ary(j + k - j + m - l) = tmp(m)
                    m = m + 1
                end if
            end do
            do while (k < l)
                ary(j + k - j + m - l) = tmp(k)
                k = k + 1
            end do
            do while (m <= r)
                ary(j + k - j + m - l) = tmp(m)
                m = m + 1
            end do
            do k = j, r
                tmp(k) = ary(k)
            end do
        end do
    end do

end subroutine merge_sort
