TYPE=VIEW
query=select `aa`.`f_user_id` AS `f_user_id`,`aa`.`f_project_id` AS `f_project_id`,`aa`.`f_grade_score` AS `f_grade_score`,date_format((now() - interval 1 day),\'%Y-%m-%d\') AS `f_date` from `db_xdb`.`t_plan_detail` `aa` where (to_days(`aa`.`f_crt_time`) <= to_days((now() - interval 1 day))) group by `aa`.`f_user_id`,`aa`.`f_project_id`,`aa`.`f_crt_time` having (`aa`.`f_crt_time` = (select max(`db_xdb`.`t_plan_detail`.`f_crt_time`) from `db_xdb`.`t_plan_detail` where ((`db_xdb`.`t_plan_detail`.`f_project_id` = `aa`.`f_project_id`) and (`db_xdb`.`t_plan_detail`.`f_user_id` = `aa`.`f_user_id`) and (to_days(`db_xdb`.`t_plan_detail`.`f_crt_time`) <= to_days((now() - interval 1 day))))))
md5=e00220e13dd5281964fccfb168a5d906
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2019-06-10 03:13:06
create-version=1
source=select `aa`.`f_user_id` AS `f_user_id`,`aa`.`f_project_id` AS `f_project_id`,`aa`.`f_grade_score` AS `f_grade_score`,date_format((now() - interval 1 day),\'%Y-%m-%d\') AS `f_date` from `t_plan_detail` `aa` where (to_days(`aa`.`f_crt_time`) <= to_days((now() - interval 1 day))) group by `aa`.`f_user_id`,`aa`.`f_project_id`,`aa`.`f_crt_time` having (`f_crt_time` = (select max(`t_plan_detail`.`f_crt_time`) from `t_plan_detail` where ((`t_plan_detail`.`f_project_id` = `aa`.`f_project_id`) and (`t_plan_detail`.`f_user_id` = `aa`.`f_user_id`) and (to_days(`t_plan_detail`.`f_crt_time`) <= to_days((now() - interval 1 day))))))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `aa`.`f_user_id` AS `f_user_id`,`aa`.`f_project_id` AS `f_project_id`,`aa`.`f_grade_score` AS `f_grade_score`,date_format((now() - interval 1 day),\'%Y-%m-%d\') AS `f_date` from `db_xdb`.`t_plan_detail` `aa` where (to_days(`aa`.`f_crt_time`) <= to_days((now() - interval 1 day))) group by `aa`.`f_user_id`,`aa`.`f_project_id`,`aa`.`f_crt_time` having (`aa`.`f_crt_time` = (select max(`db_xdb`.`t_plan_detail`.`f_crt_time`) from `db_xdb`.`t_plan_detail` where ((`db_xdb`.`t_plan_detail`.`f_project_id` = `aa`.`f_project_id`) and (`db_xdb`.`t_plan_detail`.`f_user_id` = `aa`.`f_user_id`) and (to_days(`db_xdb`.`t_plan_detail`.`f_crt_time`) <= to_days((now() - interval 1 day))))))
