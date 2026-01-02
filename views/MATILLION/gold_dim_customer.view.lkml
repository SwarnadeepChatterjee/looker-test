# The name of this view in Looker is "Gold Dim Customer"
view: gold_dim_customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "MATILLION"."Gold_Dim_Customer" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Buying Group Name" in Explore.

  dimension: buying_group_name {
    type: string
    sql: ${TABLE}."BuyingGroupName" ;;
  }

  dimension: customer_category_name {
    type: string
    sql: ${TABLE}."CustomerCategoryName" ;;
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
    drill_fields: [buying_group_name, customer_name, customer_category_name]
  }
}
