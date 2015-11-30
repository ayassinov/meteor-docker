# meteor-docker # 
A simple Docker image for meteor project

## create a meteor app ##

    docker run fiveronin/meteor meteor create myapp

## run your meteor app ##

In a terminal go to the folder of your meteor project then use this command to run mongodb and meteor server


    docker run -d --name mongodb mongo:2.6.10  

    docker run --cap-add SYS_ADMIN -it --name myapp --link mongodb:db -e "MONGO_URL=mongodb://db" --rm -p 3000:3000 -v "$(pwd)":/tmp/app fiveronin/meteor


## stop the servers ##

To stop the servers run this command

    docker stop myapp && docker stop mongodb
