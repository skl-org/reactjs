## Getting Started

### 1. Install dependecies

```
npm install
```


### 2. Build static file

```
npm run build
```


### 3. Build Docker image

```
docker build -t reactjs .
```

### 4. Test Run-time ENV

```
docker run -d -p 3000:80 -e ENV=production reactjs
```

### 5. Test http://localhost:3000