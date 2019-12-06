connection: "bqlookercodelab"

# include all the views
include: "/views/**/*.view"

datagroup: bqlooker_codelab_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bqlooker_codelab_default_datagroup



explore: patient_vital_info {}

explore: patients_with_conditions_and_medications {}
