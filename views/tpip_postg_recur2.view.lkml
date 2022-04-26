# The name of this view in Looker is "Tpip Postg Recur2"
view: tpip_postg_recur2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.tpipPostgRecur2`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Auto" in Explore.

  dimension: auto {
    type: string
    sql: ${TABLE}.auto ;;
  }

  dimension: fecha_carga {
    type: string
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: id_auto {
    type: number
    sql: ${TABLE}.id_auto ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id_auto {
    type: sum
    sql: ${id_auto} ;;
  }

  measure: average_id_auto {
    type: average
    sql: ${id_auto} ;;
  }

  dimension: id_tipoauto {
    type: number
    sql: ${TABLE}.id_tipoauto ;;
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
