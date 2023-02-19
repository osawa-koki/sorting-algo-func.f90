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

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Selection Sort'
    call selection_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Insertion Sort'
    call insertion_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Merge Sort'
    call merge_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Quick Sort'
    call quick_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Shuffled'
    call shuffle(numbers(1:n), n)
    write(*,*) title, ': ', numbers

    title = 'Heap Sort'
    call heap_sort(numbers(1:n), n)
    write(*,*) title, ': ', numbers

end program main
