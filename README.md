### Si queres sabes mas sobre mi:
[Nestor Marsollier](https://github.com/nmarsollier/profile)

# Microservicio de Carrito

Este microservicio gestiona los artículos en el carrito por usuario.

Sólo existe un carrito activo por usuario.

Una vez hecha la compra el carrito se cierra y se genera una orden.

[Documentación de API](./README-API.md)

La documentación de las api también se pueden consultar desde el home del microservicio
que una vez levantado el servidor se puede navegar en [localhost:3003](http://localhost:3003/)

## Dependencias

### Auth

Las imágenes solo pueden subirse y descargarse por usuarios autenticados, ver la arquitectura de microservicios de [ecommerce](https://github.com/nmarsollier/ecommerce).

### Catalog

Los artículos en el carrito se validan contra el catalogo, ver la arquitectura de microservicios de [ecommerce](https://github.com/nmarsollier/ecommerce).

### Node 10.15

Seguir los pasos de instalación del sitio oficial

[nodejs.org](https://nodejs.org/en/)

### MongoDb

Ver tutorial de instalación en [ecommerce](https://github.com/nmarsollier/ecommerce).


### RabbitMQ

La comunicación con Catalog y Auth es a través de rabbit.

Ver tutorial de instalación en [ecommerce](https://github.com/nmarsollier/ecommerce).

## Ejecución

Abrir ventana de comandos en la carpeta del microservicio y ejecutar :

```bash
npm install
npm start
```

## Apidoc

Apidoc es una herramienta que genera documentación de apis para proyectos node (ver [Apidoc](http://apidocjs.com/)).

El microservicio muestra la documentación como archivos estáticos si se abre en un browser la raíz del servidor [localhost:3003](http://localhost:3003/)

Ademas se genera la documentación en formato markdown.

## Archivo .env

Este archivo permite configurar diversas opciones de la app, ver ejemplos en .env.example


## Docker

Para crear el contenedor docker de este repositorio ejecutamos :

```bash
docker build -t ecommerce-cart-node .
docker run -d --name ecommerce-cart-node --network host ecommerce-cart-node
```

El contenedor se puede parar usando :

```bash
docker stop ecommerce-cart-node
```
Se vuelve a levantar usando 

```bash
docker start ecommerce-cart-node 
```
