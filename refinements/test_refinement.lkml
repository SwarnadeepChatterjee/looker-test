# include all the views
include: "/views/**/*.view.lkml"

# The name of this view in Looker is "Instacart Orders"
view : +gold_fact_orders {
  measure: percentile_unit_ratio {
    type: string
    sql:
    CAST(${TABLE}."Quantity" AS VARCHAR)
    || '_' ||
    CAST(${order_id} AS VARCHAR)
  ;;
  }
}
