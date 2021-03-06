const Sequelize = require('sequelize');
const connection = require('../config/database');

// Modelo de Repuesto
const Repuesto = connection.define('Repuesto', 
{
    Nombre: {
        type: Sequelize.STRING,
        allowNull: false,

        validate: {
            isAlphanumeric: true,
            notEmpty: true
        }
    },
    Descripcion: {
        type: Sequelize.STRING,
        allowNull: false,

        validate: {
            notEmpty: true
        }
    },
    Detalle: {
        type: Sequelize.TEXT,
        allowNull: false,

        validate: {
            notEmpty: true
        }
    },
    Cantidad: {
        type: Sequelize.INTEGER,
        allowNull: false,

        validate: {
            isInt: true,
            notEmpty: true
        }
    },

    Tipo: {
        type: Sequelize.STRING,
        allowNull: false,

        validate: {
            isAlphanumeric: true,
            notEmpty: true
        }
    },

    Disponibilidad: {
        type: Sequelize.BOOLEAN,
        defaultValue: true,
        allowNull: false,

        validate: {
            notEmpty: true
        }
    }
},
{
    timestamps: false,
    freezeTableName: true
});

module.exports = Repuesto;