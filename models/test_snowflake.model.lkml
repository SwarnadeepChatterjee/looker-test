# Define the database connection to be used for this model.
connection: "test-database-snowflake"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: test_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_snowflake_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Test Snowflake"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: buyinggroups {}

explore: +buyinggroups {
    query: test_query {
      dimensions: [buyinggroupid, buyinggroupname]
      measures: [count]
    }

}

explore: bronze_buying_groups {}

explore: bronze_customer_categories {}

explore: bronze_customers {}

explore: bronze_order_lines {}

explore: bronze_orders {}

explore: colors {}

explore: customercategories {}

explore: customers {}

explore: gold_dim_customer {}

explore: gold_fact_orders {}

explore: orderlines {}

explore: orders {}

explore: packagetypes {}

explore: people {}

explore: stockitems {}

explore: silver_buying_groups {}

explore: silver_customer_categories {}

explore: silver_customers {}

explore: silver_order_lines {}

explore: silver_orders {}

explore: table1 {}

explore: table2 {}

explore: table3 {}

explore: table4 {}

explore: table5 {}

explore: testvector {}
