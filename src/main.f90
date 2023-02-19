program main
    implicit none
    integer, dimension(10) :: numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    integer :: n
    n = size(numbers)

    call shuffle(numbers(1:n), n)
    write(*,*) 'Shuffled: ', numbers

    call bubble_sort(numbers(1:n), n)
    write(*,*) 'Bubble Sort: ', numbers

end program main
