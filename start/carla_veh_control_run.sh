#!/bin/bash
export PYTHONPATH=.
mkdir -p ./log

#ppo
reward_type=12
nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'ppo2' --port 2000 --random_seed 0  --reward_type $reward_type --lambda_entropy 0.01 --ratio_clip 0.2> ./log/exp_carla_ppo_0.log &
sleep 30s

#mcppo
#reward_type=17
#nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'cppo' --port 2000 --eval_gap 0 --gamma 0.99 0.95 0.95 0.95 --weight 1 0. 0. 0. --cost_threshold 0.02 0.05 0.12  --reward_type $reward_type  --objective_type clip --lambda_entropy 0.01 --ratio_clip 0.2> ./log/exp_carla_cppo_15.log &
#sleep 30s

#discreteppo
#reward_type=12
#nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'discreteppo2' --port 2000 --batch_size 256 --reward_type $reward_type  --lambda_entropy 0.01 --ratio_clip 0.2> ./log/exp_carla_discreteppo2_0.log &
#sleep 30s

#ppo2+multivariate Gaussian policy
#reward_type=12
#nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'ppo2cmaes' --port 2000  --reward_type $reward_type --lambda_entropy 0.01 --ratio_clip 0.2> ./log/exp_carla_pppo2cmaes_0.log &
#sleep 30s

#sac
#reward_type=12
#nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'sac' --port 2500 --reward_scale 4  --reward_type $reward_type --learning_rate 0.0001 --batch_size 256 > ./log/exp_carla_sac_1.log &
#sleep 30s

#d3qn
#reward_type=12
#nohup python gym_carla_feature/start_env/demo/veh_control.py --demo_type 'd3qn' --port 2100 --reward_type $reward_type  --discrete_steer -0.6 -0.3 -0.1 0.0 0.1 0.3 0.6 > ./log/exp_carla1.log &
#sleep 30s