# The name of this view in Looker is "Bronze Order Lines"
view: bronze_order_lines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Bronze_OrderLines" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: last_edited_by {
    type: number
    sql: ${TABLE}."last_edited_by" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: last_edited_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_edited_when" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}."order_line_id" ;;
  }

  dimension: package_type_id {
    type: number
    sql: ${TABLE}."package_type_id" ;;
  }

  dimension: picked_quantity {
    type: number
    sql: ${TABLE}."picked_quantity" ;;
  }

  dimension_group: picking_completed_when {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."picking_completed_when" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: stock_item_id {
    type: number
    sql: ${TABLE}."stock_item_id" ;;
  }

  dimension: tax_rate {
    type: number
    sql: ${TABLE}."tax_rate" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."unit_price" ;;
  }
  measure: count {
    type: count
  }
}
