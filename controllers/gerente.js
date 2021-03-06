const connection = require('../config/database');
const Sequelize = require('sequelize');
const bcrypt = require('bcryptjs');

// Modelos Utilizados
const User = require('../models/user');
const Cliente = require('../models/cliente');
const Vehiculo = require('../models/vehiculo');
const Modelo = require('../models/modelo');
const Marca = require('../models/marca');
const Orden = require('../models/orden');

const controller = {};

// Metodo que retorna un arreglo de vehiculos con todos los datos pertinentes
controller.getVehiculos = async function (callback) {
    try {
        let response = await Vehiculo.findAll({ where: { Activo: true } });

        // Construye un arreglo unicamente con los datos necesarios
        let vehiculos = response.map(resultado => resultado.dataValues);

        // Busca los nombres de las marcas de los vehiculos
        for (let i = 0; i < vehiculos.length; i++) {
            let response = await Marca.findById(vehiculos[i].Marca);
            vehiculos[i].Marca = response.dataValues.Nombre;
        }

        // Busca los nombres de los modelos de los vehiculos
        for (let i = 0; i < vehiculos.length; i++) {
            let response = await Modelo.findById(vehiculos[i].Modelo);
            vehiculos[i].Modelo = response.dataValues.Nombre;
        }

        // Agrega los datos de la orden de cada vehiculo, en el caso de tenerla
        for (let i = 0; i < vehiculos.length; i++) {
            let response = await Orden.findOne({
                where: {
                    Vehiculo: vehiculos[i].id,
                    Activa: true
                }
            });
            if (!!response) { // Solo agrega los datos si ese vehiculo tiene una orden activa
                vehiculos[i].Estado = response.dataValues.Estado;
                vehiculos[i].Evaluacion = response.dataValues.Evaluacion;
                vehiculos[i].Servicio = response.dataValues.Servicio;
                vehiculos[i].FechaSolicitud = response.dataValues.FechaSolicitud;
                vehiculos[i].FechaAdmision = response.dataValues.FechaAdmision;
                vehiculos[i].DetalleOrden = response.dataValues.Detalle;
            }
        }

        // Filtra los vehiculos que no tienen una orden activa
        vehiculos = vehiculos.filter(vehiculo => !!vehiculo.Estado);

        // Retorna el arreglo
        callback(vehiculos, null);
    } catch (err) {
        callback(null, err);
    }
};

module.exports = controller;