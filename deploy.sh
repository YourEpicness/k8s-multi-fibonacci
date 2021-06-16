docker build -t jbdiop/multi-client:latest -t jbdiop/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t jbdiop/multi-server:latest -t jbdiop/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t jbdiop/multi-worker:latest -t jbdiop/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push jbdiop/multi-client:latest
docker push jbdiop/multi-server:latest
docker push jbdiop/multi-worker:latest

docker push jbdiop/multi-client:$SHA
docker push jbdiop/multi-server:$SHA
docker push jbdiop/multi-worker:$SHA 

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=jbdiop/multi-client:$SHA
kubectl set image deployments/server-deployment server=jbdiop/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=jbdiop/multi-worker:$SHA
