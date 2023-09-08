## Argo CD

Argo CD is a GitOps continuous delivery tool designed to automate and simplify the deployment and management of applications and their configurations in Kubernetes clusters. It operates by monitoring Git repositories for changes in configuration files and then automatically synchronizing the desired state of applications with the current state in the cluster. 

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

- The web app can be accessed on localhost:8080.

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

View app:

```
argocd app get <app-name>
```

Sync app:

```
argocd app sync <app-name>
```

Enable autosync:

- The default sync interval is 3 minutes.

```
argocd app set <app-name> --sync-policy auto --self-heal --auto-prune
```
