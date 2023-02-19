program main
    implicit none
    integer, dimension(10) :: numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    integer :: n
    character(len=15) :: title
    n = size(numbers)

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Bubble Sort'
    call bubble_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

end program main
