# The name of this view in Looker is "Table2"
view: table2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SCHEMA2"."TABLE2" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Acronym1 Authid" in Explore.

  dimension: acronym1_authid {
    type: string
    sql: ${TABLE}."ACRONYM1_AUTHID" ;;
  }

  dimension: device_name {
    type: string
    sql: ${TABLE}."DEVICE_NAME" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DT" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."SESSION_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [device_name]
  }
}
