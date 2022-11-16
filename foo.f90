module foo

        implicit none

        integer, save :: a

        interface run
                module subroutine run_impl()
                end subroutine
        end interface
        interface init
                module subroutine init_impl(v)
                        integer, intent(in) :: v
                end subroutine
        end interface

        private

        public :: run
        !public :: init

end module
