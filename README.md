## Requirements

PHP 7 is required to run this service.
CAKEPHP 2.9.4: https://book.cakephp.org/2.0/en/index.html

## Starting the Dev server

For the operations below and indicated the use of a root user or that has privileges of the same.


1. Create a folder for the Somos Natura project in your workspace
2. Create a folder named `src` inside the Project folder and clone the repositories: [https://bitbucket.org/naturacode/somos_natura/src/master/](somos_natura); [https://bitbucket.org/naturacode/somos_natura_service/src/master/](somos_natura_service); [https://bitbucket.org/naturacode/natura_eventos_backend/src/master/](natura_eventos_backend)
3. Inside the `data` folder located in the` somos_natura` repository, create a new folder named `dump` and add the` sql` file from the application database
4. Return to the `somos_natura` project root and run the `make run` command to run the application
5. Open [http://localhost](http://localhost)
6. If it is running on your machine, run `make in` to access the Docker container and` chmod -R 777 app/tmp/ `to grant permissions to the folder.
7. Outside the container, run `docker exec -it somosnatura-web bash` to enter the container's bash.
8. Inside the va va container is a `/var/www/html/app` folder and execute` ./Console/cake schema update` to update the database.
8. Run `make stop`  to stop containers
9. Run `make clean`  to remove containers
10. Run `make log`  to see logs web container

## Most Useful Commands

To change database structure change the file:
/var/www/html/somos_natura/src/app/Config/Schema/schema.php

To run update database structure run:
[http://localhost/manages/updatedb](http://localhost/manages/updatedb)

To configure the local database, connect creating the file from "database.local.php.default":

`/var/www/html/somos_natura/src/app/Config/database.local.php`

Para fazer logs na Aplicação:
`CakeLog::write('info', 'Texto para o log');`

## URLs system to maintenance

method: /segments/eventmanage_associate_by_email/[segment_id]?email=[email]
comment: associate user by "email" in segment

method: /users/admin_analytic_users_merge($id_destino, $id_origin)
comment: SQL to merge user data from id_origin to id_destino. delete id_origin 

method: /users/admin_analytic_users($score = 100, $type = 'email', $hide_script = 1)
comment: view users duplicated by type (user's field)

## CRON

http://domain/notifications/sendNotificationSchedule
comment: send schedule notifications to users (App Natura Events, App Natura Colaborator)

## Logs

Graylog - tips to facilite your search
Query: [your_search] AND io_kubernetes_container_name:somosnatura* AND NOT message:APPController AND NOT message:HTTP AND NOT message:SCHEDULE

Sensedia - tips 
Query: trace.fulltextsearch: "xpto"

