kube_versions () {
  for context in `kubectx`
  do
      echo "$context: `kubectl -o json --context $context version | jq '.serverVersion.gitVersion'`"
  done
}
