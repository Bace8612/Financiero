# The name of this view in Looker is "T Pippostg Transf1"
view: t_pippostg_transf1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.tPippostgTransf1`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Age" in Explore.

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_age {
    type: sum
    sql: ${age} ;;
  }

  measure: average_age {
    type: average
    sql: ${age} ;;
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
    type: number
    sql: ${TABLE}.income ;;
  }

  dimension: loan_lenght {
    type: number
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
    type: number
    sql: ${TABLE}.signers ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
