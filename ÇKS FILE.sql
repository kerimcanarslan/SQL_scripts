
SELECT *
FROM (SELECT adcb.customer_code,
       adcb.customer_code_new,
         c.tc_id,
      NULL AS TAX_NO, --c.tax_no,
      adcb.production_year,
      ROW_NUMBER() OVER(PARTITION BY adcb.customer_code, adcb.PRODUCTION_YEAR ORDER BY adcb.PRODUCTION_YEAR DESC) AS row_num_year,
      adcb.as_of_date,
      adcb.cks_flag
   FROM (SELECT A.*,
        CASE WHEN A.PROPOSAL_NO IS NOT NULL THEN 1 ELSE 0 END AS CKS_FLAG,
        CASE WHEN EXTRACT(MONTH FROM A.as_of_date) > 9 THEN EXTRACT(YEAR FROM A.as_of_date) + 1 ELSE 
        EXTRACT(YEAR FROM A.as_of_date) END AS production_year, 
        CASE WHEN Length(A.Customer_code) = 3 THEN A.customer_code||'     '
             WHEN Length(A.Customer_code) = 4 THEN A.customer_code||'    '
             WHEN Length(A.Customer_code) = 5 THEN A.customer_code||'   '
             WHEN Length(A.Customer_code) = 6 THEN A.customer_code||'  '
             WHEN Length(A.Customer_code) = 7 THEN A.customer_code||' ' ELSE  A.customer_code 
             END AS customer_code_new
      FROM MGR20245.EWS_BAZ_DATA_PRE_10 A
        WHERE A.segment_2023 = '0-100K_Gercek_Ciftci') adcb, --in ( '250-500K_Gercek_Ciftci','0-100K_Gercek_Ciftci','100-250K_Gercek_Ciftci','+500K_Gercek_Ciftci') adcb,
        olap.dm_customer c
   WHERE 1 = 1
   AND adcb.customer_code = c.customer_code
   AND CKS_FLAG = 0)
  WHERE (tc_id, production_year) NOT IN (SELECT DISTINCT tc_id, product_season
                      FROM cksgw.cksgw_file_transfer@prod_link
                      WHERE 1 = 1
                      --AND status = '1'
                      AND error_desc IN
                      ('Baþarýlý Veri Döndü', 'Üretici Bilgileri Bulunamadý')
                      AND tc_id IS NOT NULL
                      --AND customer_code = '30097492'
                      --ORDER BY his_insert_date DESC
                     )
AND ROWNUM <= 500 and row_num_year=1
ORDER BY LENGTH(CUSTOMER_CODE) DESC;



SELECT error_code, error_desc, count(1) --DISTINCT tc_id, product_season
FROM cksgw.cksgw_file_transfer@prod_link
WHERE 1=1
AND status = '1'
group by error_code, error_desc;


select * from mgr20804.EWS_PERF_GGS_YAP
