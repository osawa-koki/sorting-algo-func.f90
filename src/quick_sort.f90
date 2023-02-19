
recursive subroutine quick_sort(ary, n)
    integer, intent(inout) :: ary(*)
    integer, intent(in) :: n
    integer :: i, j, pivot, temp

    if (n > 1) then
      pivot = ary(n/2)
      i = 1
      j = n

      do while (i <= j)
        do while (ary(i) < pivot)
          i = i + 1
        end do

        do while (ary(j) > pivot)
          j = j - 1
        end do

        if (i <= j) then
          temp = ary(i)
          ary(i) = ary(j)
          ary(j) = temp
          i = i + 1
          j = j - 1
        end if
      end do

      call quick_sort(ary(1:j), j)
      call quick_sort(ary(i:n), n-i+1)
    end if

end subroutine quick_sort
