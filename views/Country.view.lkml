view: Country {
  # The sql_table_name parameter indicates the underlying database table
  sql_table_name: `google.com:project-polaris-ai.project_polaris_ai_ds.Country` ;;

  # No mary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Country Dimension
  dimension: Country {
    type: string
    sql:${TABLE}.Country;;
    label: "Country"
    description: "This attribute give details about Country"
    tags: ["Country"]
  }

  # Country_code Dimension
  dimension: Country_code {
    type: string
    #sql: ${TABLE}.Country_code ;;
    sql: CASE
    WHEN ${TABLE}.Country_code = 'AF' THEN 'AFG'
    WHEN ${TABLE}.Country_code = 'AX' THEN 'ALA'
    WHEN ${TABLE}.Country_code = 'AL' THEN 'ALB'
    WHEN ${TABLE}.Country_code = 'DZ' THEN 'DZA'
    WHEN ${TABLE}.Country_code = 'AS' THEN 'ASM'
    WHEN ${TABLE}.Country_code = 'AD' THEN 'AND'
    WHEN ${TABLE}.Country_code = 'AO' THEN 'AGO'
    WHEN ${TABLE}.Country_code = 'AI' THEN 'AIA'
    WHEN ${TABLE}.Country_code = 'AQ' THEN 'ATA'
    WHEN ${TABLE}.Country_code = 'AG' THEN 'ATG'
    WHEN ${TABLE}.Country_code = 'AR' THEN 'ARG'
    WHEN ${TABLE}.Country_code = 'AM' THEN 'ARM'
    WHEN ${TABLE}.Country_code = 'AW' THEN 'ABW'
    WHEN ${TABLE}.Country_code = 'AU' THEN 'AUS'
    WHEN ${TABLE}.Country_code = 'AT' THEN 'AUT'
    WHEN ${TABLE}.Country_code = 'AZ' THEN 'AZE'
    WHEN ${TABLE}.Country_code = 'BS' THEN 'BHS'
    WHEN ${TABLE}.Country_code = 'BH' THEN 'BHR'
    WHEN ${TABLE}.Country_code = 'BD' THEN 'BGD'
    WHEN ${TABLE}.Country_code = 'BB' THEN 'BRB'
    WHEN ${TABLE}.Country_code = 'BY' THEN 'BLR'
    WHEN ${TABLE}.Country_code = 'BE' THEN 'BEL'
    WHEN ${TABLE}.Country_code = 'BZ' THEN 'BLZ'
    WHEN ${TABLE}.Country_code = 'BJ' THEN 'BEN'
    WHEN ${TABLE}.Country_code = 'BM' THEN 'BMU'
    WHEN ${TABLE}.Country_code = 'BT' THEN 'BTN'
    WHEN ${TABLE}.Country_code = 'BO' THEN 'BOL'
    WHEN ${TABLE}.Country_code = 'BQ' THEN 'BES'
    WHEN ${TABLE}.Country_code = 'BA' THEN 'BIH'
    WHEN ${TABLE}.Country_code = 'BW' THEN 'BWA'
    WHEN ${TABLE}.Country_code = 'BV' THEN 'BVT'
    WHEN ${TABLE}.Country_code = 'BR' THEN 'BRA'
    WHEN ${TABLE}.Country_code = 'IO' THEN 'IOT'
    WHEN ${TABLE}.Country_code = 'BN' THEN 'BRN'
    WHEN ${TABLE}.Country_code = 'BG' THEN 'BGR'
    WHEN ${TABLE}.Country_code = 'BF' THEN 'BFA'
    WHEN ${TABLE}.Country_code = 'BI' THEN 'BDI'
    WHEN ${TABLE}.Country_code = 'KH' THEN 'KHM'
    WHEN ${TABLE}.Country_code = 'CM' THEN 'CMR'
    WHEN ${TABLE}.Country_code = 'CA' THEN 'CAN'
    WHEN ${TABLE}.Country_code = 'CV' THEN 'CPV'
    WHEN ${TABLE}.Country_code = 'KY' THEN 'CYM'
    WHEN ${TABLE}.Country_code = 'CF' THEN 'CAF'
    WHEN ${TABLE}.Country_code = 'TD' THEN 'TCD'
    WHEN ${TABLE}.Country_code = 'CL' THEN 'CHL'
    WHEN ${TABLE}.Country_code = 'CN' THEN 'CHN'
    WHEN ${TABLE}.Country_code = 'CX' THEN 'CXR'
    WHEN ${TABLE}.Country_code = 'CC' THEN 'CCK'
    WHEN ${TABLE}.Country_code = 'CO' THEN 'COL'
    WHEN ${TABLE}.Country_code = 'KM' THEN 'COM'
    WHEN ${TABLE}.Country_code = 'CG' THEN 'COG'
    WHEN ${TABLE}.Country_code = 'CD' THEN 'COD'
    WHEN ${TABLE}.Country_code = 'CK' THEN 'COK'
    WHEN ${TABLE}.Country_code = 'CR' THEN 'CRI'
    WHEN ${TABLE}.Country_code = 'CI' THEN 'CIV'
    WHEN ${TABLE}.Country_code = 'HR' THEN 'HRV'
    WHEN ${TABLE}.Country_code = 'CU' THEN 'CUB'
    WHEN ${TABLE}.Country_code = 'CW' THEN 'CUW'
    WHEN ${TABLE}.Country_code = 'CY' THEN 'CYP'
    WHEN ${TABLE}.Country_code = 'CZ' THEN 'CZE'
    WHEN ${TABLE}.Country_code = 'DK' THEN 'DNK'
    WHEN ${TABLE}.Country_code = 'DJ' THEN 'DJI'
    WHEN ${TABLE}.Country_code = 'DM' THEN 'DMA'
    WHEN ${TABLE}.Country_code = 'DO' THEN 'DOM'
    WHEN ${TABLE}.Country_code = 'EC' THEN 'ECU'
    WHEN ${TABLE}.Country_code = 'EG' THEN 'EGY'
    WHEN ${TABLE}.Country_code = 'SV' THEN 'SLV'
    WHEN ${TABLE}.Country_code = 'GQ' THEN 'GNQ'
    WHEN ${TABLE}.Country_code = 'ER' THEN 'ERI'
    WHEN ${TABLE}.Country_code = 'EE' THEN 'EST'
    WHEN ${TABLE}.Country_code = 'ET' THEN 'ETH'
    WHEN ${TABLE}.Country_code = 'FK' THEN 'FLK'
    WHEN ${TABLE}.Country_code = 'FO' THEN 'FRO'
    WHEN ${TABLE}.Country_code = 'FJ' THEN 'FJI'
    WHEN ${TABLE}.Country_code = 'FI' THEN 'FIN'
    WHEN ${TABLE}.Country_code = 'FR' THEN 'FRA'
    WHEN ${TABLE}.Country_code = 'GF' THEN 'GUF'
    WHEN ${TABLE}.Country_code = 'PF' THEN 'PYF'
    WHEN ${TABLE}.Country_code = 'TF' THEN 'ATF'
    WHEN ${TABLE}.Country_code = 'GA' THEN 'GAB'
    WHEN ${TABLE}.Country_code = 'GM' THEN 'GMB'
    WHEN ${TABLE}.Country_code = 'GE' THEN 'GEO'
    WHEN ${TABLE}.Country_code = 'DE' THEN 'DEU'
    WHEN ${TABLE}.Country_code = 'GH' THEN 'GHA'
    WHEN ${TABLE}.Country_code = 'GI' THEN 'GIB'
    WHEN ${TABLE}.Country_code = 'GR' THEN 'GRC'
    WHEN ${TABLE}.Country_code = 'GL' THEN 'GRL'
    WHEN ${TABLE}.Country_code = 'GD' THEN 'GRD'
    WHEN ${TABLE}.Country_code = 'GP' THEN 'GLP'
    WHEN ${TABLE}.Country_code = 'GU' THEN 'GUM'
    WHEN ${TABLE}.Country_code = 'GT' THEN 'GTM'
    WHEN ${TABLE}.Country_code = 'GG' THEN 'GGY'
    WHEN ${TABLE}.Country_code = 'GN' THEN 'GIN'
    WHEN ${TABLE}.Country_code = 'GW' THEN 'GNB'
    WHEN ${TABLE}.Country_code = 'GY' THEN 'GUY'
    WHEN ${TABLE}.Country_code = 'HT' THEN 'HTI'
    WHEN ${TABLE}.Country_code = 'HM' THEN 'HMD'
    WHEN ${TABLE}.Country_code = 'VA' THEN 'VAT'
    WHEN ${TABLE}.Country_code = 'HN' THEN 'HND'
    WHEN ${TABLE}.Country_code = 'HK' THEN 'HKG'
    WHEN ${TABLE}.Country_code = 'HU' THEN 'HUN'
    WHEN ${TABLE}.Country_code = 'IS' THEN 'ISL'
    WHEN ${TABLE}.Country_code = 'IN' THEN 'IND'
    WHEN ${TABLE}.Country_code = 'ID' THEN 'IDN'
    WHEN ${TABLE}.Country_code = 'IR' THEN 'IRN'
    WHEN ${TABLE}.Country_code = 'IQ' THEN 'IRQ'
    WHEN ${TABLE}.Country_code = 'IE' THEN 'IRL'
    WHEN ${TABLE}.Country_code = 'IM' THEN 'IMN'
    WHEN ${TABLE}.Country_code = 'IL' THEN 'ISR'
    WHEN ${TABLE}.Country_code = 'IT' THEN 'ITA'
    WHEN ${TABLE}.Country_code = 'JM' THEN 'JAM'
    WHEN ${TABLE}.Country_code = 'JP' THEN 'JPN'
    WHEN ${TABLE}.Country_code = 'JE' THEN 'JEY'
    WHEN ${TABLE}.Country_code = 'JO' THEN 'JOR'
    WHEN ${TABLE}.Country_code = 'KZ' THEN 'KAZ'
    WHEN ${TABLE}.Country_code = 'KE' THEN 'KEN'
    WHEN ${TABLE}.Country_code = 'KI' THEN 'KIR'
    WHEN ${TABLE}.Country_code = 'KP' THEN 'PRK'
    WHEN ${TABLE}.Country_code = 'KR' THEN 'KOR'
    WHEN ${TABLE}.Country_code = 'KW' THEN 'KWT'
    WHEN ${TABLE}.Country_code = 'KG' THEN 'KGZ'
    WHEN ${TABLE}.Country_code = 'LA' THEN 'LAO'
    WHEN ${TABLE}.Country_code = 'LV' THEN 'LVA'
    WHEN ${TABLE}.Country_code = 'LB' THEN 'LBN'
    WHEN ${TABLE}.Country_code = 'LS' THEN 'LSO'
    WHEN ${TABLE}.Country_code = 'LR' THEN 'LBR'
    WHEN ${TABLE}.Country_code = 'LY' THEN 'LBY'
    WHEN ${TABLE}.Country_code = 'LI' THEN 'LIE'
    WHEN ${TABLE}.Country_code = 'LT' THEN 'LTU'
    WHEN ${TABLE}.Country_code = 'LU' THEN 'LUX'
    WHEN ${TABLE}.Country_code = 'MO' THEN 'MAC'
    WHEN ${TABLE}.Country_code = 'MK' THEN 'MKD'
    WHEN ${TABLE}.Country_code = 'MG' THEN 'MDG'
    WHEN ${TABLE}.Country_code = 'MW' THEN 'MWI'
    WHEN ${TABLE}.Country_code = 'MY' THEN 'MYS'
    WHEN ${TABLE}.Country_code = 'MV' THEN 'MDV'
    WHEN ${TABLE}.Country_code = 'ML' THEN 'MLI'
    WHEN ${TABLE}.Country_code = 'MT' THEN 'MLT'
    WHEN ${TABLE}.Country_code = 'MH' THEN 'MHL'
    WHEN ${TABLE}.Country_code = 'MQ' THEN 'MTQ'
    WHEN ${TABLE}.Country_code = 'MR' THEN 'MRT'
    WHEN ${TABLE}.Country_code = 'MU' THEN 'MUS'
    WHEN ${TABLE}.Country_code = 'YT' THEN 'MYT'
    WHEN ${TABLE}.Country_code = 'MX' THEN 'MEX'
    WHEN ${TABLE}.Country_code = 'FM' THEN 'FSM'
    WHEN ${TABLE}.Country_code = 'MD' THEN 'MDA'
    WHEN ${TABLE}.Country_code = 'MC' THEN 'MCO'
    WHEN ${TABLE}.Country_code = 'MN' THEN 'MNG'
    WHEN ${TABLE}.Country_code = 'ME' THEN 'MNE'
    WHEN ${TABLE}.Country_code = 'MS' THEN 'MSR'
    WHEN ${TABLE}.Country_code = 'MA' THEN 'MAR'
    WHEN ${TABLE}.Country_code = 'MZ' THEN 'MOZ'
    WHEN ${TABLE}.Country_code = 'MM' THEN 'MMR'
    WHEN ${TABLE}.Country_code = 'NA' THEN 'NAM'
    WHEN ${TABLE}.Country_code = 'NR' THEN 'NRU'
    WHEN ${TABLE}.Country_code = 'NP' THEN 'NPL'
    WHEN ${TABLE}.Country_code = 'NL' THEN 'NLD'
    WHEN ${TABLE}.Country_code = 'NC' THEN 'NCL'
    WHEN ${TABLE}.Country_code = 'NZ' THEN 'NZL'
    WHEN ${TABLE}.Country_code = 'NI' THEN 'NIC'
    WHEN ${TABLE}.Country_code = 'NE' THEN 'NER'
    WHEN ${TABLE}.Country_code = 'NG' THEN 'NGA'
    WHEN ${TABLE}.Country_code = 'NU' THEN 'NIU'
    WHEN ${TABLE}.Country_code = 'NF' THEN 'NFK'
    WHEN ${TABLE}.Country_code = 'MP' THEN 'MNP'
    WHEN ${TABLE}.Country_code = 'NO' THEN 'NOR'
    WHEN ${TABLE}.Country_code = 'OM' THEN 'OMN'
    WHEN ${TABLE}.Country_code = 'PK' THEN 'PAK'
    WHEN ${TABLE}.Country_code = 'PW' THEN 'PLW'
    WHEN ${TABLE}.Country_code = 'PS' THEN 'PSE'
    WHEN ${TABLE}.Country_code = 'PA' THEN 'PAN'
    WHEN ${TABLE}.Country_code = 'PG' THEN 'PNG'
    WHEN ${TABLE}.Country_code = 'PY' THEN 'PRY'
    WHEN ${TABLE}.Country_code = 'PE' THEN 'PER'
    WHEN ${TABLE}.Country_code = 'PH' THEN 'PHL'
    WHEN ${TABLE}.Country_code = 'PN' THEN 'PCN'
    WHEN ${TABLE}.Country_code = 'PL' THEN 'POL'
    WHEN ${TABLE}.Country_code = 'PT' THEN 'PRT'
    WHEN ${TABLE}.Country_code = 'PR' THEN 'PRI'
    WHEN ${TABLE}.Country_code = 'QA' THEN 'QAT'
    WHEN ${TABLE}.Country_code = 'RE' THEN 'REU'
    WHEN ${TABLE}.Country_code = 'RO' THEN 'ROU'
    WHEN ${TABLE}.Country_code = 'RU' THEN 'RUS'
    WHEN ${TABLE}.Country_code = 'RW' THEN 'RWA'
    WHEN ${TABLE}.Country_code = 'BL' THEN 'BLM'
    WHEN ${TABLE}.Country_code = 'SH' THEN 'SHN'
    WHEN ${TABLE}.Country_code = 'KN' THEN 'KNA'
    WHEN ${TABLE}.Country_code = 'LC' THEN 'LCA'
    WHEN ${TABLE}.Country_code = 'MF' THEN 'MAF'
    WHEN ${TABLE}.Country_code = 'PM' THEN 'SPM'
    WHEN ${TABLE}.Country_code = 'VC' THEN 'VCT'
    WHEN ${TABLE}.Country_code = 'WS' THEN 'WSM'
    WHEN ${TABLE}.Country_code = 'SM' THEN 'SMR'
    WHEN ${TABLE}.Country_code = 'ST' THEN 'STP'
    WHEN ${TABLE}.Country_code = 'SA' THEN 'SAU'
    WHEN ${TABLE}.Country_code = 'SN' THEN 'SEN'
    WHEN ${TABLE}.Country_code = 'RS' THEN 'SRB'
    WHEN ${TABLE}.Country_code = 'SC' THEN 'SYC'
    WHEN ${TABLE}.Country_code = 'SL' THEN 'SLE'
    WHEN ${TABLE}.Country_code = 'SG' THEN 'SGP'
    WHEN ${TABLE}.Country_code = 'SX' THEN 'SXM'
    WHEN ${TABLE}.Country_code = 'SK' THEN 'SVK'
    WHEN ${TABLE}.Country_code = 'SI' THEN 'SVN'
    WHEN ${TABLE}.Country_code = 'SB' THEN 'SLB'
    WHEN ${TABLE}.Country_code = 'SO' THEN 'SOM'
    WHEN ${TABLE}.Country_code = 'ZA' THEN 'ZAF'
    WHEN ${TABLE}.Country_code = 'GS' THEN 'SGS'
    WHEN ${TABLE}.Country_code = 'SS' THEN 'SSD'
    WHEN ${TABLE}.Country_code = 'ES' THEN 'ESP'
    WHEN ${TABLE}.Country_code = 'LK' THEN 'LKA'
    WHEN ${TABLE}.Country_code = 'SD' THEN 'SDN'
    WHEN ${TABLE}.Country_code = 'SR' THEN 'SUR'
    WHEN ${TABLE}.Country_code = 'SJ' THEN 'SJM'
    WHEN ${TABLE}.Country_code = 'SZ' THEN 'SWZ'
    WHEN ${TABLE}.Country_code = 'SE' THEN 'SWE'
    WHEN ${TABLE}.Country_code = 'CH' THEN 'CHE'
    WHEN ${TABLE}.Country_code = 'SY' THEN 'SYR'
    WHEN ${TABLE}.Country_code = 'TW' THEN 'TWN'
    WHEN ${TABLE}.Country_code = 'TJ' THEN 'TJK'
    WHEN ${TABLE}.Country_code = 'TZ' THEN 'TZA'
    WHEN ${TABLE}.Country_code = 'TH' THEN 'THA'
    WHEN ${TABLE}.Country_code = 'TL' THEN 'TLS'
    WHEN ${TABLE}.Country_code = 'TG' THEN 'TGO'
    WHEN ${TABLE}.Country_code = 'TK' THEN 'TKL'
    WHEN ${TABLE}.Country_code = 'TO' THEN 'TON'
    WHEN ${TABLE}.Country_code = 'TT' THEN 'TTO'
    WHEN ${TABLE}.Country_code = 'TN' THEN 'TUN'
    WHEN ${TABLE}.Country_code = 'TR' THEN 'TUR'
    WHEN ${TABLE}.Country_code = 'TM' THEN 'TKM'
    WHEN ${TABLE}.Country_code = 'TC' THEN 'TCA'
    WHEN ${TABLE}.Country_code = 'TV' THEN 'TUV'
    WHEN ${TABLE}.Country_code = 'UG' THEN 'UGA'
    WHEN ${TABLE}.Country_code = 'UA' THEN 'UKR'
    WHEN ${TABLE}.Country_code = 'AE' THEN 'ARE'
    WHEN ${TABLE}.Country_code = 'GB' THEN 'GBR'
    WHEN ${TABLE}.Country_code = 'US' THEN 'USA'
    WHEN ${TABLE}.Country_code = 'UM' THEN 'UMI'
    WHEN ${TABLE}.Country_code = 'UY' THEN 'URY'
    WHEN ${TABLE}.Country_code = 'UZ' THEN 'UZB'
    WHEN ${TABLE}.Country_code = 'VU' THEN 'VUT'
    WHEN ${TABLE}.Country_code = 'VE' THEN 'VEN'
    WHEN ${TABLE}.Country_code = 'VN' THEN 'VNM'
    WHEN ${TABLE}.Country_code = 'VG' THEN 'VGB'
    WHEN ${TABLE}.Country_code = 'VI' THEN 'VIR'
    WHEN ${TABLE}.Country_code = 'WF' THEN 'WLF'
    WHEN ${TABLE}.Country_code = 'EH' THEN 'ESH'
    WHEN ${TABLE}.Country_code = 'YE' THEN 'YEM'
    WHEN ${TABLE}.Country_code = 'ZM' THEN 'ZMB'
    WHEN ${TABLE}.Country_code = 'ZW' THEN 'ZWE'
    ELSE NULL
    END ;;
    label: "Country Code"
    description: "This attribute give details about Country Code"
    tags: ["Country Code"]
  }

  # Country_Code2 Dimension
  dimension: Country_Code2 {
    type: string
    sql: ${TABLE}.Country_Code ;;
    label: "Country_Code2"
    description: "This attribute give details about Country_Code2"
    tags: ["Country_Code2"]
  }

  # Population Dimension
  dimension: Population {
    type: string
    sql: ${TABLE}.Population ;;
    label: "Population"
    description: "This attribute give details about Population"
    tags: ["Population"]
  }

  # Zone Dimension
  dimension: Zone {
    type: string
    sql: ${TABLE}.Zone ;;
    label: "Zone"
    description: "This attribute give details about Zone"
    tags: ["Zone"]
  }

# Country_Count measure
  measure: Country_Count {
    type: count
    drill_fields: [Country]
    label: "Country_Count"
    description: "This attribute give details about count of Country Count"
    tags: ["Country Count","count of Country"]
  }

}
