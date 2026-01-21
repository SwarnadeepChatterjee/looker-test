
view: sql_runner_query {
  derived_table: {
    sql: SELECT
        creditlimit,
        customerid,
        paymentdays,
        deliverypostalcode
      FROM starburst.dim_customer ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: creditlimit {
    type: number
    sql: ${TABLE}."CREDITLIMIT" ;;
  }

  dimension: customerid {
    type: number
    sql: ${TABLE}."CUSTOMERID" ;;
  }

  dimension: paymentdays {
    type: number
    sql: ${TABLE}."PAYMENTDAYS" ;;
  }

  dimension: deliverypostalcode {
    type: string
    sql: ${TABLE}."DELIVERYPOSTALCODE" ;;
  }

  set: detail {
    fields: [
      creditlimit,
      customerid,
      paymentdays,
      deliverypostalcode
    ]
  }
}
