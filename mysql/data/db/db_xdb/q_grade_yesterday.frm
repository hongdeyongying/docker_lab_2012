TYPE=VIEW
query=select `db_xdb`.`t_grade_detail`.`f_user_id` AS `f_user_id`,`db_xdb`.`t_grade_detail`.`f_project_id` AS `f_project_id`,date_format(`db_xdb`.`t_grade_detail`.`f_crt_time`,\'%Y%-%m-%d\') AS `f_date`,sum(`db_xdb`.`t_grade_detail`.`f_grade_score`) AS `f_score`,sum(`db_xdb`.`t_grade_detail`.`f_limit_score`) AS `f_limit` from `db_xdb`.`t_grade_detail` where (to_days(now()) = (to_days(`db_xdb`.`t_grade_detail`.`f_crt_time`) + 1)) group by `db_xdb`.`t_grade_detail`.`f_user_id`,`db_xdb`.`t_grade_detail`.`f_project_id`
md5=76a16e6e156130d6a6a8494fc6e84428
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2019-06-10 03:13:06
create-version=1
source=select `t_grade_detail`.`f_user_id` AS `f_user_id`,`t_grade_detail`.`f_project_id` AS `f_project_id`,date_format(`t_grade_detail`.`f_crt_time`,\'%Y%-%m-%d\') AS `f_date`,sum(`t_grade_detail`.`f_grade_score`) AS `f_score`,sum(`t_grade_detail`.`f_limit_score`) AS `f_limit` from `t_grade_detail` where (to_days(now()) = (to_days(`t_grade_detail`.`f_crt_time`) + 1)) group by `t_grade_detail`.`f_user_id`,`t_grade_detail`.`f_project_id`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `db_xdb`.`t_grade_detail`.`f_user_id` AS `f_user_id`,`db_xdb`.`t_grade_detail`.`f_project_id` AS `f_project_id`,date_format(`db_xdb`.`t_grade_detail`.`f_crt_time`,\'%Y%-%m-%d\') AS `f_date`,sum(`db_xdb`.`t_grade_detail`.`f_grade_score`) AS `f_score`,sum(`db_xdb`.`t_grade_detail`.`f_limit_score`) AS `f_limit` from `db_xdb`.`t_grade_detail` where (to_days(now()) = (to_days(`db_xdb`.`t_grade_detail`.`f_crt_time`) + 1)) group by `db_xdb`.`t_grade_detail`.`f_user_id`,`db_xdb`.`t_grade_detail`.`f_project_id`
