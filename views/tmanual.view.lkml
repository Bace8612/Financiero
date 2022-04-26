# The name of this view in Looker is "Tmanual"
view: tmanual {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.TManual`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Descripcion" in Explore.

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: edad {
    type: number
    sql: ${TABLE}.Edad ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_edad {
    type: sum
    sql: ${edad} ;;
  }

  measure: average_edad {
    type: average
    sql: ${edad} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_carga {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: idtm {
    type: number
    sql: ${TABLE}.idtm ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
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
