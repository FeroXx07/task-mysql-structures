# task-mysql-structures 

##  Enunciat de l'exercici

**T’han contractat per a dissenyar una web que permeti fer comandes de menjar a domicili per Internet.**

-  Tingues en compte les següents indicacions per a modelar com seria la base de dades del projecte:

- Per a cada client/a emmagatzemem un identificador únic:
    - Nom.
    - Cognoms.
    - Adreça.
    - Codi postal.
    - Localitat.
    - Província.
    - Número de telèfon.
    - Les dades de localitat i província estaran emmagatzemats en taules separades. Sabem que una localitat pertany a una única província, i que una província pot tenir moltes localitats. Per a cada localitat emmagatzemem un identificador únic i un nom. Per a cada província emmagatzemem un identificador únic i un nom.
- Una persona pot realitzar moltes comandes, però una única comanda només pot ser realitzat per una única persona. De cada comanda s'emmagatzema un identificador únic:
    - Data/hora.
    - Si la comanda és per a repartiment a domicili o per a recollir en botiga.
    - La quantitat de productes que s'han seleccionat de cada tipus.
    - El preu total.

**Una comanda pot constar d'un o diversos productes.**


- Els productes poden ser pizzes, hamburgueses i begudes. De cada producte s'emmagatzema un identificador únic:
    - Nom.
    - Descripció.
    - Imatge.
    - Preu.

**En el cas de les pizzes existeixen diverses categories que poden anar canviant de nom al llarg de l'any. Una pizza només pot estar dins d'una categoria, però una categoria pot tenir moltes pizzes.**


- De cada categoria s'emmagatzema un identificador únic i un nom. Una comanda és gestionada per una única botiga i una botiga pot gestionar moltes comandes. De cada botiga s'emmagatzema un identificador únic:
    - Adreça.
    - Codi postal.
    - Localitat.
    - Província.

- En una botiga poden treballar molts empleats/des i un empleat/da només pot treballar en una botiga. De cada empleat/da, s'emmagatzema un identificador únic:
    - Nom.
    - Cognoms.
    - NIF.
    - Telèfon.
    - Si treballa com a cuiner/a o repartidor/a. Per a les comandes de repartiment a domicili interessa guardar qui és el repartidor/a que fa el lliurament de la comanda i la data/hora del moment del lliurament.



## 🛠 Tecnologies  
- MySQL - MySQL Workbench 8

## 🚀 Instal·lació i Execució
1. Clonar el repositori: `git clone ...`   
2. Visualitzar el diagrama
3. Variables d'entorn: Crear `.env` amb...  
    - MYSQL_ROOT_PASSWORD=ReplaceWithAStrongRootPassword
    - MYSQL_PASSWORD=ReplaceWithAStrongAppPassword
4. Per executar el mysql container: `cd ... fins al nivell de directori corresponent del archiu 'docker-compose.yml'`

    ```docker
    # Build the images
    docker compose build

    # Start the containers
    docker compose up -d

    # Check running containers
    docker compose ps

    # View logs
    docker compose logs -f

    # Stop the application
    docker compose down
    ```
5. Per executar el script de creació del schema, tables and data:
    - MySQL Workbench: run the script from the GUI
    - SQL SHELL (CLI):

        ```docker
            # Copy script file from WINDOWS to container
            docker cp "C:\Users\YourName\Desktop\init.sql" mysql-container:/tmp/init.sql

            # Open the sql shell inside the container
            docker exec -it mysql-container mysql -u root -p

            # Execute the script from inside the MySQL shell
            'SOURCE /tmp/init.sql;' or '\. /tmp/init.sql'
        ```

## 🧩 Diagrames i justificació de decisions tècniques (si és aplicable)