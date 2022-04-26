# The name of this view in Looker is "Tpip Postg1"
view: tpip_postg1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.tpipPostg1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cliente" in Explore.

  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }

  dimension: fecha_carga {
    type: string
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.id_cliente ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_id_cliente {
    type: sum
    sql: ${id_cliente} ;;
  }

  measure: average_id_cliente {
    type: average
    sql: ${id_cliente} ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.PIPELINE ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
