@ClientHandling.type: #CLIENT_DEPENDENT
define table function ZCDS_TABLE_FUNCTION1
  with parameters
    @Environment.systemField : #CLIENT
    clnt : syst_mandt
returns
{
  mandt :mandt;
  matnr :matnr;
}
implemented by method
  zcds_table_function=>get_data;
