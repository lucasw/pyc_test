### Building image

```bash
git clone https://github.com/aarsht7/pyc_test.git
cd pyc_test 
docker build --no-cache --progress=plain -t pyctest .
docker run --rm -it pyctest:latest
```


### Inside Container

- Using .py file
```bash
. devel/setup.bash
roslaunch talker talker.launch
```

- Using .pyc file
```bash
. devel/setup.bash
roslaunch talker talker.launch use_pyc:=true
```