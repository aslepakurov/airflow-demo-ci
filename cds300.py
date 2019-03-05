from airflow.operators.bash_operator import BashOperator
from airflow.models import DAG, Variable
from airflow.utils import dates
from airflow.operators.bash_reader import BashReader

br = BashReader(__file__)
hour_start = Variable.get('hour_start')
minute_start = Variable.get('minute_start')

args = {
    'owner': 'airflow',
    'start_date': dates.days_ago(0, hour=int(hour_start), minute=int(minute_start))
}

script_to_run = br.read_script()

dag = DAG(
    dag_id='test_cds300', default_args=args,
    schedule_interval='*/1 * * * *')


bash_this = BashOperator(task_id='test_cds300', bash_command=script_to_run, params={"param": "test"}, dag=dag)
