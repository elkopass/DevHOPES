// this file has the param overrides for the default environment
local base = import './base.libsonnet';

base {
  components +: {
    example +: {
      indexData: 'demo default\n',
      replicas: 2,
    },
  }
}
