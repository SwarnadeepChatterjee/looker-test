# The name of this view in Looker is "Colors"
view: colors {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LANDING"."COLORS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Fivetran Deleted" in Explore.

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: colorid {
    type: number
    value_format_name: id
    sql: ${TABLE}."COLORID" ;;
  }

  dimension: colorname {
    type: string
    sql: ${TABLE}."COLORNAME" ;;
  }

  dimension: lasteditedby {
    type: number
    sql: ${TABLE}."LASTEDITEDBY" ;;
  }

  dimension_group: validfrom {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."VALIDFROM" ;;
  }

  dimension_group: validto {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."VALIDTO" ;;
  }
  measure: count {
    type: count
    drill_fields: [colorname]
  }
}
