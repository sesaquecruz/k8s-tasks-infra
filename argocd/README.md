## Argo CD

### CLI

Download:

```
wget https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
```

Install:

```
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
```

### Login

Create proxy:

```
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

Get initial password (username is `admin`):

```
kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
```

Login:

```
argocd login localhost:8080
```

### Configure

Get context:

```
kubectl config current-context
```

Add context:

```
argocd cluster add <current-context>
```

Add app:

- Repository url ends with .git.
- Cluster address showed on previous command output.

```
argocd app create <app-name> --repo <repository-url> --path <k8s-scripts-path> --dest-server <cluster-address> --dest-namespace <namespace>
```