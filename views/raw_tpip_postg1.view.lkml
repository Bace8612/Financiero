# The name of this view in Looker is "Raw Tpip Postg1"
view: raw_tpip_postg1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.RAW_tpipPostg1`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

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
    type: string
    sql: ${TABLE}.id_cliente ;;
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
