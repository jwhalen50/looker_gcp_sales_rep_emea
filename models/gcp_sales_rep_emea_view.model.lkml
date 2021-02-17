connection: "okera_gcp_sales_rep_emea"

# include all the views
include: "/views/**/*.view"

datagroup: gcp_sales_rep_emea_view_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gcp_sales_rep_emea_view_default_datagroup

explore: transactions {}

explore: whoami {}
