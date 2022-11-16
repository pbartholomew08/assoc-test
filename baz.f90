submodule (foo) baz

        implicit none

contains

        module subroutine init_impl(v)

                integer, intent(in) :: v

                a = v

                print *, "Set A in host module: A=", a

        end subroutine

end submodule
