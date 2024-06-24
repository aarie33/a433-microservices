# karsajobs-ui
Frontend for [karsajobs](https://github.com/dicodingacademy/karsajobs)

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

## Run Docker Build
```
chmod +x build_push_image_karsajobs_ui.sh
./build_push_image_karsajobs_ui.sh
```

### Run Kubernetes
```
kubectl apply -f karsajobs/karsajobs-deployment.yml
kubectl apply -f karsajobs/karsajobs-service.yml
```
