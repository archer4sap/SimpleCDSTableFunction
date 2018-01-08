CLASS zcds_table_function DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS get_data
        FOR TABLE FUNCTION zcds_table_function1.
ENDCLASS.



CLASS zcds_table_function IMPLEMENTATION.

  METHOD get_data BY DATABASE FUNCTION FOR HDB
                LANGUAGE SQLSCRIPT
                OPTIONS READ-ONLY
                USING mara.
    declare lt_material table( mandt       nvarchar(3),
                               matnr       nvarchar(40)
                              );
-- Returning materials from MARA table
    RETURN SELECT mandt, matnr FROM mara;

  ENDMETHOD.

ENDCLASS.
