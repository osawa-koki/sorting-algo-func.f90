program main
    implicit none
    integer, dimension(10) :: numbers = [7, 1, 10, 3, 5, 2, 8, 9, 4, 6]
    integer :: n
    n = size(numbers)
    
    call bubble_sort(numbers(1:n), n)
    write(*,*) 'Bubble Sort: ', numbers

end program main
