    #--- kubectl Helpers ---#
alias k='kubectl'
alias ka='kubectl apply'
alias kaf='kubectl apply -f'
alias kc='kubectl create'
alias kcd='kubectl create deployment'
alias kcn='kubectl create namespace'
alias kcp='kubectl create pod'
alias kcr='kubectl create replicaset'
alias kcs='kubectl create service'
alias kcf='kubectl config use-context'
alias kcfs='kubectl config set-context'
alias kcfsc='kubectl config set-context --current'
alias kd='kubectl describe'
alias kdd='kubectl describe deployment'
alias kdds='kubectl describe deployments'
alias kdn='kubectl describe namespace'
alias kdns='kubectl describe namespaces'
alias kdp='kubectl describe pod'
alias kdps='kubectl describe pods'
alias kdr='kubectl describe replicaset'
alias kdrs='kubectl describe replicasets'
alias kds='kubectl describe service'
alias kdss='kubectl describe services'
alias kdl='kubectl delete'
alias kdld='kubectl delete deployment'
alias kdln='kubectl delete namespace'
alias kdlp='kubectl delete pod'
alias kdlr='kubectl delete replicaset'
alias kdls='kubectl delete service'
alias ke='kubectl edit'
alias ked='kubectl edit deployment'
alias ken='kubectl edit namespace'
alias kep='kubectl edit pod'
alias ker='kubectl edit replicaset'
alias kes='kubectl edit service'
alias kg='kubectl get'
alias kgd='kubectl get deployment'
alias kgds='kubectl get deployments'
alias kgdsa='kubectl get deployments --all-namespaces'
alias kgdsc='kubectl get deployments --no-headers | wc -l'
alias kgdss='kubectl get deployments --selector'
alias kgn='kubectl get namespace'
alias kgns='kubectl get namespaces'
alias kgnsa='kubectl get namespaces --all-namespaces'
alias kgnss='kubectl get namespaces --selector'
alias kgp='kubectl get pod'
alias kgps='kubectl get pods -o wide'
alias kgpsa='kubectl get pods -o wide --all-namespaces'
alias kgpsc='kubectl get pods --no-headers | wc -l'
alias kgpss='kubectl get pods --selector'
alias kgr='kubectl get replicaset'
alias kgrs='kubectl get replicasets'
alias kgrsa='kubectl get replicasets --all-namespaces'
alias kgrsc='kubectl get replicasets --no-headers | wc -l'
alias kgrss='kubectl get replicasets --selector'
alias kgs='kubectl get service'
alias kgss='kubectl get services'
alias kgssa='kubectl get services --all-namespaces'
alias kgssc='kubectl get services --no-headers | wc -l'
alias kgsss='kubectl get services --selector'
alias kpf='kubectl port-forward'
alias kr='kubectl run'
alias ktn='kubectl taint nodes'