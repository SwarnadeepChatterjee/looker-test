# include all the views
include: "/views/**/*.view.lkml"

view: +gold_fact_orders {

  dimension: percentile_unit_ratio {
    type: string
    sql:
      CAST(${TABLE}."Quantity" AS VARCHAR)
      || '_' ||
      CAST(${order_id} AS VARCHAR)
    ;;
  }

}
