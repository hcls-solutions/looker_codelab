view: patient_vital_info {
  sql_table_name: fhir_20k_patients_analytics.PatientVitalInfo ;;

  dimension_group: dateofmeasurement {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dateofmeasurement ;;
  }

  dimension: encounter_type {
    type: string
    sql: ${TABLE}.encounter_type ;;
  }

  dimension: measurement {
    type: string
    sql: ${TABLE}.measurement ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patientId ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
