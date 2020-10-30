alias ol-doc-make='docker run --rm -v $PWD:/data -w /data registry.gitlab.objectif-libre.com/apps/doc-tools make'
alias ol-slides-bootstrap='docker run -ti --rm -v $PWD:/data -w /data registry.gitlab.objectif-libre.com/apps/doc-tools ol-slides-bootstrap'
alias ol-doc-bootstrap='docker run -ti --rm -v $PWD:/data -w /data registry.gitlab.objectif-libre.com/apps/doc-tools ol-doc-bootstrap'
alias oldocs-make='docker run --rm -v $PWD:/data -w /data registry.gitlab.objectif-libre.com/apps/doc-tools:old make'

