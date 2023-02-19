
subroutine merge_sort(array, n)
    implicit none
    
    integer, intent(inout) :: array(n)
    integer, intent(in) :: n
    integer :: i, j, k, mid, n1, n2
    
    if (n > 1) then
        mid = n / 2
        n1 = mid
        n2 = n - mid
        
        integer, dimension(n1) :: left
        integer, dimension(n2) :: right
        
        do i = 1, mid
            left(i) = array(i)
        end do
        
        do i = mid + 1, n
            right(i - mid) = array(i)
        end do
        
        call merge_sort(left, n1)
        call merge_sort(right, n2)
        
        i = 1
        j = 1
        k = 1
        
        do while (i <= n1 .and. j <= n2)
            if (left(i) <= right(j)) then
                array(k) = left(i)
                i = i + 1
            else
                array(k) = right(j)
                j = j + 1
            end if
            k = k + 1
        end do
        
        do while (i <= n1)
            array(k) = left(i)
            i = i + 1
            k = k + 1
        end do
        
        do while (j <= n2)
            array(k) = right(j)
            j = j + 1
            k = k + 1
        end do
        
    end if
    
end subroutine merge_sort
