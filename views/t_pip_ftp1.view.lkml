# The name of this view in Looker is "T Pip Ftp1"
view: t_pip_ftp1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.tPipFtp1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto" in Explore.

  dimension: auto {
    type: string
    sql: ${TABLE}.AUTO ;;
  }

  dimension: fecha_carga {
    type: string
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: id_auto {
    type: string
    sql: ${TABLE}.ID_AUTO ;;
  }

  dimension: id_tipoauto {
    type: string
    sql: ${TABLE}.ID_TIPOAUTO ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.PIPELINE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
