# The name of this view in Looker is "Silver Customers"
view: silver_customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Silver_Customers" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Buying Group ID" in Explore.

  dimension: buying_group_id {
    type: number
    sql: ${TABLE}."BuyingGroupID" ;;
  }

  dimension: customer_category_id {
    type: number
    sql: ${TABLE}."CustomerCategoryID" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."CustomerID" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CustomerName" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
