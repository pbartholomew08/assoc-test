module foo

        implicit none

        integer, save :: a

        interface run
                module subroutine run_impl()
                end subroutine
        end interface

        private

        public :: run
        public :: init

contains

        subroutine init(v)

                integer, intent(in) :: v

                a = v

                print *, "Set A in host module: A=", a

        end subroutine

end module
