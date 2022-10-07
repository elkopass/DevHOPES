#!/usr/bin/env bash

while getopts s:v: flag
do
    # shellcheck disable=SC2220
    case "${flag}" in
        s) service=${OPTARG};;
        v) version=${OPTARG};;
    esac
done

ENVS=$(/bin/ls environments | grep values )

echo "# Templating ${service} version ${version}"

ENVS_ARRAY=($ENVS)
for values in "${ENVS_ARRAY[@]}"; do
    echo "###"
    echo "# Using environment file ${values}"
    echo "###"
    helm template -f values.yaml -f "environments/${values}" "${version}" "${service}"
done
