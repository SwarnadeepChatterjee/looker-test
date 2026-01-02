# The name of this view in Looker is "Table4"
view: table4 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SCHEMA3"."TABLE4" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: shard_id {
    type: number
    sql: ${TABLE}."SHARD_ID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: usage_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."USAGE_TS" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: version_id {
    type: string
    sql: ${TABLE}."VERSION_ID" ;;
  }
  measure: count {
    type: count
  }
}
