submodule (foo) bar

        use foo

        implicit none

contains

        module subroutine run_impl()

                a = 8
                print *, "Set A by host-association: A=", a

                call init(7)

                print *, "Read A by host-association: A=", a

        end subroutine

end submodule
