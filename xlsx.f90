! main.f90
PROGRAM main
  INTERFACE
    SUBROUTINE demo() BIND(C, name="demo")
    END SUBROUTINE demo
  END INTERFACE

  CALL demo()
END PROGRAM main

