CLASS zcl_itab_basics DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    TYPES group TYPE c LENGTH 1.
    TYPES: BEGIN OF initial_type,
             group       TYPE group,
             number      TYPE i,
             description TYPE string,
           END OF initial_type,
           itab_data_type TYPE STANDARD TABLE OF initial_type WITH EMPTY KEY.

    METHODS fill_itab
           RETURNING
             VALUE(initial_data) TYPE itab_data_type.

    METHODS add_to_itab
           IMPORTING initial_data TYPE itab_data_type
           RETURNING
            VALUE(updated_data) TYPE itab_data_type.

    METHODS sort_itab
           IMPORTING initial_data TYPE itab_data_type
           RETURNING
            VALUE(updated_data) TYPE itab_data_type.

    METHODS search_itab
           IMPORTING initial_data TYPE itab_data_type
           RETURNING
             VALUE(result_index) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_itab_basics IMPLEMENTATION.
  METHOD fill_itab.
    itab_data_type = value #( (group = 'A' number = '10'  description = 'GROUP A-2')
                              (group = 'B' number = '5'   description = 'GROUP B'  )
                              (group = 'A' number = '6'   description = 'GROUP A-1')
                              (group = 'C' number = '22'  description = 'GROUP C-1')                              
                              (group = 'A' number = '13'  description = 'GROUP A-3')    
                              (group = 'C' number = '500' description = 'GROUP C-2')  ).

  ENDMETHOD.

  METHOD add_to_itab.
    updated_data = initial_data.
    "add solution here
  ENDMETHOD.

  METHOD sort_itab.
    updated_data = initial_data.
    "add solution here
  ENDMETHOD.

  METHOD search_itab.
    DATA(temp_data) = initial_data.
    "add solution here
  ENDMETHOD.

ENDCLASS.
