# The name of this view in Looker is "Gold Fact Orders"
view: gold_fact_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Gold_Fact_Orders" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: number
    sql: ${TABLE}."CustomerId" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."OrderDate" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."OrderId" ;;
  }

  dimension: order_line_id {
    type: number
    sql: ${TABLE}."OrderLineId" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."Quantity" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UnitPrice" ;;
  }

  measure: sum_unit_price {
    type: sum
    sql: ${unit_price} ;;
  }
  measure: percentile_unit_price {
    type: number
    value_format_name: percent_2
    sql: ${sum_unit_price}/ NULLIF(${unit_price},0) ;;
  }
}
