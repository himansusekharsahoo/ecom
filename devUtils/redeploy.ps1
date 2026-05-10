docker build -t ecom-frontend-app:latest .
k3d image import ecom-frontend-app:latest -c ecom-cluster
kubectl rollout restart deployment ecom-frontend
kubectl rollout status deployment ecom-frontend