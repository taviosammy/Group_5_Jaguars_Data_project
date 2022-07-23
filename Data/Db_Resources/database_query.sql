--create a test table that will be used for testing machine learning codes
SELECT hdp_orig.PtID,
hdp_orig.Age,
sex. Sex_desc as sex,
cp type.cp type short as chestpaintype,
hdp_orig.restingbp,
hdp_orig.cholesterol,
hdp_orig. fastingbs,
restekg. ekg_desc as restingEKG,
hdp_orig.maxhr,
exc_angina.exercise_angina_desc as exerciseangina,
hdp_orig.oldpeak,
slope. slope_desc as st_slope,
hdp_orig.heartdisease
from heart_dp_orig as hdp_orig
into heart_dp_test
left join sex on hdp_orig. sex = sex. sex
left join cp_type on hdp_orig. chestpaintype = cp_type.chestpaintype
left join restekg on hdp_orig.restingekg = restekg. ekg_result
left join exc angina on hdp orig.exerciseangina = exc angina.exercise angina

--create a new table that will be used for the final machine learning codes
SELECT hdp_new.PtID,
	hdp_new.Age,
	hdp_new.Sex,
	hdp_new.chestpaintype,
	hdp_new.restingbp,
	hdp_new. cholesterol.
	hdp_new. fastingbs,
	hdp_new.restingekg,
	hdp_new. maxhr:
	hdp_new. exerciseangina,
	hdp_new. oldpeak,
	hdp_new.st_slope,
	heartdisease.hd_desc
into heart_dp_train
from heart_dp_new as hdp_new
left join heartdisease on hdp_new.heartdisease = heartdisease. HD

