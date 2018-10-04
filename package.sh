#!/bin/bash

apps="codecov"
temp_dir=onefootball-charts

mkdir ${temp_dir}
for app in ${apps}; do
	helm package ${app}/
done

cp *.tgz ${temp_dir}/
helm repo index ${temp_dir} --url https://onefootball.github.io/charts/
