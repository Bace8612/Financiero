# The name of this view in Looker is "Raw T Pip4"
view: raw_t_pip4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `finanzas_2k5e20fzcok9.RAW_tPip4`
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
  # This dimension will be called "Fecha Carga" in Explore.

  dimension: fecha_carga {
    type: string
    sql: ${TABLE}.FECHA_CARGA ;;
  }

  dimension: fecha_entrega {
    type: string
    sql: ${TABLE}.FECHA_ENTREGA ;;
  }

  dimension: fecha_facturacion {
    type: string
    sql: ${TABLE}.FECHA_FACTURACION ;;
  }

  dimension: id_auto {
    type: string
    sql: ${TABLE}.ID_AUTO ;;
  }

  dimension: id_cliente {
    type: string
    sql: ${TABLE}.ID_CLIENTE ;;
  }

  dimension: id_factura {
    type: string
    sql: ${TABLE}.ID_FACTURA ;;
  }

  dimension: id_sucursal {
    type: string
    sql: ${TABLE}.ID_SUCURSAL ;;
  }

  dimension: id_tipoauto {
    type: string
    sql: ${TABLE}.ID_TIPOAUTO ;;
  }

  dimension: iva {
    type: string
    sql: ${TABLE}.IVA ;;
  }

  dimension: monto {
    type: string
    sql: ${TABLE}.MONTO ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}.PIPELINE ;;
  }

  dimension: total {
    type: string
    sql: ${TABLE}.TOTAL ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
