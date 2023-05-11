

------------------------------

select /*+PARALELL(16)*/ 'unpaid_chq_amt_l36m' as degisken, min(as_of_date)as ilk_doluluk_tarihi from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and unpaid_chq_amt_l36m is not null

union 

select /*+PARALELL(16)*/ 'unpaid_chq_amt_l60m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and unpaid_chq_amt_l60m is not null

union

select /*+PARALELL(16)*/ 'last_proposal_unpaid_chq_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_unpaid_chq_amt is not null

union

select /*+PARALELL(16)*/ 'last_proposal_decease_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_decease_flg is not null

union

select /*+PARALELL(16)*/ 'cash_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and cash_risk is not null

union

select /*+PARALELL(16)*/ 'ncash_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and ncash_risk is not null

union

select /*+PARALELL(16)*/ 'rank_by_total_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and rank_by_total_risk is not null


union

select /*+PARALELL(16)*/ 'last_proposal_unpaid_notes_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_unpaid_notes_amt is not null

union

select /*+PARALELL(16)*/ 'last_proposal_paid_notes_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_paid_notes_amt is not null

union

select /*+PARALELL(16)*/ 'is_principle_credit_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and is_principle_credit_flg is not null

union

select /*+PARALELL(16)*/ 'principle_proposal_matrty_date', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and principle_proposal_matrty_date is not null

union

select /*+PARALELL(16)*/ 'activity_area_code', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and activity_area_code is not null

union

select /*+PARALELL(16)*/ 'activity_area', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and activity_area is not null

union

select /*+PARALELL(16)*/ 'total_limit', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and total_limit is not null

union

select /*+PARALELL(16)*/ 'total_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and total_risk is not null

union

select /*+PARALELL(16)*/ 'limit_risk_scale', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and limit_risk_scale is not null

union

select /*+PARALELL(16)*/ 'low_mort_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and low_mort_flg is not null

union

select /*+PARALELL(16)*/ 'tsp_warning_flg_l12m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_warning_flg_l12m is not null

union

select /*+PARALELL(16)*/ 'tsp_refuse_flg_l12m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_refuse_flg_l12m is not null

union

select /*+PARALELL(16)*/ 'fraud_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and fraud_flg is not null

union

select /*+PARALELL(16)*/ 'principle_proposal_matrtydate', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and principle_proposal_matrtydate is not null

union

select /*+PARALELL(16)*/ 'tsp_warning_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_warning_flg_lm is not null

union

select /*+PARALELL(16)*/ 'tsp_refuse_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_refuse_flg_lm is not null

union

select /*+PARALELL(16)*/ 'tsp_control_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_control_flg_lm is not null

union

select /*+PARALELL(16)*/ 'unpaid_chq_amt_l36m' as degisken, min(as_of_date)as ilk_doluluk_tarihi from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and unpaid_chq_amt_l36m is not null

union 

select /*+PARALELL(16)*/ 'unpaid_chq_amt_l60m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and unpaid_chq_amt_l60m is not null

union

select /*+PARALELL(16)*/ 'last_proposal_unpaid_chq_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_unpaid_chq_amt is not null

union

select /*+PARALELL(16)*/ 'last_proposal_decease_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_decease_flg is not null

union

select /*+PARALELL(16)*/ 'cash_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and cash_risk is not null

union

select /*+PARALELL(16)*/ 'ncash_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and ncash_risk is not null

union

select /*+PARALELL(16)*/ 'rank_by_total_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and rank_by_total_risk is not null


union

select /*+PARALELL(16)*/ 'last_proposal_unpaid_notes_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_unpaid_notes_amt is not null

union

select /*+PARALELL(16)*/ 'last_proposal_paid_notes_amt', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and last_proposal_paid_notes_amt is not null

union

select /*+PARALELL(16)*/ 'is_principle_credit_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and is_principle_credit_flg is not null

union

select /*+PARALELL(16)*/ 'principle_proposal_matrty_date', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and principle_proposal_matrty_date is not null

union

select /*+PARALELL(16)*/ 'activity_area_code', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and activity_area_code is not null

union

select /*+PARALELL(16)*/ 'activity_area', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and activity_area is not null

union

select /*+PARALELL(16)*/ 'total_limit', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and total_limit is not null

union

select /*+PARALELL(16)*/ 'total_risk', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and total_risk is not null

union

select /*+PARALELL(16)*/ 'limit_risk_scale', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and limit_risk_scale is not null

union

select /*+PARALELL(16)*/ 'low_mort_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and low_mort_flg is not null

union

select /*+PARALELL(16)*/ 'tsp_warning_flg_l12m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_warning_flg_l12m is not null

union

select /*+PARALELL(16)*/ 'tsp_refuse_flg_l12m', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_refuse_flg_l12m is not null

union

select /*+PARALELL(16)*/ 'fraud_flg', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and fraud_flg is not null

union

select /*+PARALELL(16)*/ 'principle_proposal_matrtydate', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and principle_proposal_matrtydate is not null

union

select /*+PARALELL(16)*/ 'tsp_warning_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_warning_flg_lm is not null

union

select /*+PARALELL(16)*/ 'tsp_refuse_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_refuse_flg_lm is not null

union

select /*+PARALELL(16)*/ 'tsp_control_flg_lm', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and tsp_control_flg_lm is not null

union

select /*+PARALELL(16)*/ 'NPL_ACC_FLG_L12M', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and NPL_ACC_FLG_L12M is not null

union

select /*+PARALELL(16)*/ 'C_CASH_RISK', min(as_of_date) from analytic_prod.fc_ews 
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and C_CASH_RISK is not null

union

select /*+PARALELL(16)*/ 'CREDIT_RISK', min(as_of_date) from analytic_prod.cust_additional_variables
WHERE as_of_date IN (TO_DATE('30.06.2021','DD.MM.YYYY'),to_date('31.08.2021','dd.mm.yyyy'),to_Date('31.10.2021','dd.mm.yyyy'), to_date('31.12.2021','dd.mm.yyyy'), to_date('28.02.2022','dd.mm.yyyy'),to_date('30.04.2022','dd.mm.yyyy'),to_Date('30.06.2022','dd.mm.yyyy'), to_Date('31.08.2022','dd.mm.yyyy'),
to_date('31.10.2022','dd.mm.yyyy') , to_date('31.12.2022','dd.mm.yyyy') /*SON AY VALIDASYON ICINDIR*/ ) 
and CREDIT_RISK is not null








unpaid_chq_amt_l60m 
unpaid_chq_amt_l36m 
last_proposal_unpaid_chq_amt 
last_proposal_decease_flg 
cash_risk 
ncash_risk 
rank_by_total_risk 
last_proposal_unpaid_notes_amt 
last_proposal_paid_notes_amt 
is_principle_credit_flg 
principle_proposal_matrty_date 
activity_area_code 
activity_area 
total_limit 
total_risk 
limit_risk_scale 
low_mort_flg 
tsp_warning_flg_l12m 
tsp_refuse_flg_l12m 
fraud_flg 
principle_proposal_matrtydate 
tsp_warning_flg_lm 
tsp_refuse_flg_lm 
tsp_control_flg_lm 
NPL_ACC_FLG_L12M
