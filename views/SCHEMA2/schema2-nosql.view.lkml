view: himanshu_view_nosql {
  sql_table_name: schema2.table2 ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}."DEVICE_NAME" ;;
  }

  dimension: acronym1_authid {
    type: string
    sql: ${TABLE}."ACRONYM1_AUTHID" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }

  dimension: dt {
    type: date
    sql: ${TABLE}."DT" ;;
  }

  set: detail {
    fields: [
      device_name,
      acronym1_authid,
      session_id,
      dt
    ]
  }
}
