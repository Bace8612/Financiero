# The name of this view in Looker is "Raw T Pippostg Transf1"
view: raw_t_pippostg_transf1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.RAW_tPippostgTransf1`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

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
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: citizenship {
    type: string
    sql: ${TABLE}.citizenship ;;
  }

  dimension: degree {
    type: string
    sql: ${TABLE}.degree ;;
  }

  dimension: fecha_carga {
    type: string
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: income {
    type: string
    sql: ${TABLE}.income ;;
  }

  dimension: loan_lenght {
    type: string
    sql: ${TABLE}.loan_lenght ;;
  }

  dimension: loan_type {
    type: string
    sql: ${TABLE}.loan_type ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.PIPELINE ;;
  }

  dimension: signers {
    type: string
    sql: ${TABLE}.signers ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
