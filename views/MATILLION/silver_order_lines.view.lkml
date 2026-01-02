# The name of this view in Looker is "Silver Order Lines"
view: silver_order_lines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Silver_OrderLines" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Order ID" in Explore.

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}."order_line_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."unit_price" ;;
  }
  measure: count {
    type: count
  }
}
