use optica;

db.gafas.insertOne(
  {
    marca: 'Ray-Ban',
    graduacion: 2.0,
    tipo: 'flotante',
    color_de_montura: 'negro',
    color_de_vidrio: 'azul',
    precio: 89.99,
    proveedor: [
      {
        nombre: 'Opticas Barcelona',
        direccion: [
          {
            calle: 'Arago',
            numero: 55,
            piso: 1,
            puerta: 1,
            ciudad: 'Barcelona',
            codigo_postal: 08024,
            pais: 'Espana',
          }
        ],
        telefono: 153125164,
        fax: 163246123,
        NIF: '56483712T'
      }
    ]
  }
)

db.gafas.insertMany(
  [
    {
    marca: 'Carrera',
    graduacion: 1.0,
    tipo: 'pasta',
    color_de_montura: 'plata',
    color_de_vidrio: 'amarillo',
    precio: 79.99,
    proveedor: [
      {
        nombre: 'Opticas Barcelona',
        direccion: [
          {
            calle: 'Arago',
            numero: 55,
            piso: 1,
            puerta: 1,
            ciudad: 'Barcelona',
            codigo_postal: 08024,
            pais: 'Espana',
          }
        ],
        telefono: 153125164,
        fax: 163246123,
        NIF: '56483712T'
      }
    ]
    },
    {
    marca: 'Ray-Ban',
    graduacion: 0,
    tipo: 'metalica',
    color_de_montura: 'cafe',
    color_de_vidrio: 'negro',
    precio: 99.99,
    proveedor: [
      {
        nombre: 'Opticas Barcelona',
        direccion: [
          {
            calle: 'Arago',
            numero: 55,
            piso: 1,
            puerta: 1,
            ciudad: 'Barcelona',
            codigo_postal: 08024,
            pais: 'Espana',
          }
        ],
        telefono: 153125164,
        fax: 163246123,
        NIF: '56483712T'
      }
    ]
    },
    {
    marca: 'Carrera',
    graduacion: -1.0,
    tipo: 'flotante',
    color_de_montura: 'azul',
    color_de_vidrio: 'azul',
    precio: 89.99,
    proveedor: [
      {
        nombre: 'Opticas Barcelona',
        direccion: [
          {
            calle: 'Arago',
            numero: 55,
            piso: 1,
            puerta: 1,
            ciudad: 'Barcelona',
            codigo_postal: 08024,
            pais: 'Espana',
          }
        ],
        telefono: 153125164,
        fax: 163246123,
        NIF: '56483712T'
      }
    ]
    },
    {
    marca: 'Lobster',
    graduacion: 2.0,
    tipo: 'metalica',
    color_de_montura: 'cafe',
    color_de_vidrio: 'azul',
    precio: 109.99,
    proveedor: [
      {
        nombre: 'Glass Deal',
        direccion: [
          {
            calle: 'North',
            numero: 5,
            piso: 3,
            puerta: 1,
            ciudad: 'Londres',
            codigo_postal: 08123,
            pais: 'Inglaterra',
          }
        ],
        telefono: 753125164,
        fax: 163246123,
        NIF: '6740212P'
      }
    ]
    },
    {
    marca: 'Lobster',
    graduacion: -2.0,
    tipo: 'flotante',
    color_de_montura: 'dorado',
    color_de_vidrio: 'gris',
    precio: 109.99,
    proveedor: [
      {
        nombre: 'Glass Deal',
        direccion: [
          {
            calle: 'North',
            numero: 5,
            piso: 3,
            puerta: 1,
            ciudad: 'Londres',
            codigo_postal: 08123,
            pais: 'Inglaterra',
          }
        ],
        telefono: 753125164,
        fax: 163246123,
        NIF: '6740212P'
      }
    ]
    },
    {
    marca: 'Oakley',
    graduacion: 1.0,
    tipo: 'pasta',
    color_de_montura: 'negro',
    color_de_vidrio: 'negro',
    precio: 59.99,
    proveedor: [
      {
        nombre: 'Glass Deal',
        direccion: [
          {
            calle: 'North',
            numero: 5,
            piso: 3,
            puerta: 1,
            ciudad: 'Londres',
            codigo_postal: 08123,
            pais: 'Inglaterra',
          }
        ],
        telefono: 753125164,
        fax: 163246123,
        NIF: '6740212P'
      }
    ]
    },
    {
    marca: 'Oakley',
    graduacion: 0.0,
    tipo: 'pasta',
    color_de_montura: 'negro',
    color_de_vidrio: 'azul',
    precio: 79.99,
    proveedor: [
      {
        nombre: 'Glass Deal',
        direccion: [
          {
            calle: 'North',
            numero: 5,
            piso: 3,
            puerta: 1,
            ciudad: 'Londres',
            codigo_postal: 08123,
            pais: 'Inglaterra',
          }
        ],
        telefono: 753125164,
        fax: 163246123,
        NIF: '6740212P'
      }
    ]
    },
    {
    marca: 'Dior',
    graduacion: 0.0,
    tipo: 'metalica',
    color_de_montura: 'negro',
    color_de_vidrio: 'negro',
    precio: 399.99,
    proveedor: [
      {
        nombre: 'Optique',
        direccion: [
          {
            calle: 'Rivoli',
            numero: 1,
            piso: 1,
            puerta: 2,
            ciudad: 'Paris',
            codigo_postal: 08654,
            pais: 'Francia',
          }
        ],
        telefono: 953125164,
        fax: 163211123,
        NIF: '1750812R'
      }
    ]
    },
    {
    marca: 'Dior',
    graduacion: 0.0,
    tipo: 'flotante',
    color_de_montura: 'dorado',
    color_de_vidrio: 'gris',
    precio: 299.99,
    proveedor: [
      {
        nombre: 'Optique',
        direccion: [
          {
            calle: 'Rivoli',
            numero: 1,
            piso: 1,
            puerta: 2,
            ciudad: 'Paris',
            codigo_postal: 08654,
            pais: 'Francia',
          }
        ],
        telefono: 953125164,
        fax: 163211123,
        NIF: '1750812R'
      }
    ]
    },
    {
    marca: 'Tom Ford',
    graduacion: 1.0,
    tipo: 'flotante',
    color_de_montura: 'cafe',
    color_de_vidrio: 'negro',
    precio: 199.99,
    proveedor: [
      {
        nombre: 'Optique',
        direccion: [
          {
            calle: 'Rivoli',
            numero: 1,
            piso: 1,
            puerta: 2,
            ciudad: 'Paris',
            codigo_postal: 08654,
            pais: 'Francia',
          }
        ],
        telefono: 953125164,
        fax: 163211123,
        NIF: '1750812R'
      }
    ]
    },
    {
    marca: 'Tom Ford',
    graduacion: 0.0,
    tipo: 'pasta',
    color_de_montura: 'dorado',
    color_de_vidrio: 'negro',
    precio: 199.99,
    proveedor: [
      {
        nombre: 'Optique',
        direccion: [
          {
            calle: 'Rivoli',
            numero: 1,
            piso: 1,
            puerta: 2,
            ciudad: 'Paris',
            codigo_postal: 08654,
            pais: 'Francia',
          }
        ],
        telefono: 953125164,
        fax: 163211123,
        NIF: '1750812R'
      }
    ]
    }
  ]
)

db.clientes.insertMany(
  [{
  "nombre": "Blane Pudan",
  "codigo_postal": 33790,
  "telefono": "390-482-1392",
  "correo": "bpudan0@blogtalkradio.com",
  "fecha_registro": "27/04/2021",
  "recomendado": ""
}, {
  "nombre": "Shelley Shevelin",
  "codigo_postal": 18548,
  "telefono": "547-164-8385",
  "correo": "sshevelin1@ed.gov",
  "fecha_registro": "05/01/2022",
  "recomendado": ""
}, {
  "nombre": "Phaedra Mathie",
  "codigo_postal": 22235,
  "telefono": "526-987-9650",
  "correo": "pmathie2@last.fm",
  "fecha_registro": "11/04/2022",
  "recomendado": "ObjectID('635b8067602e696cb5b897a6')"
}, {
  "nombre": "Koo Brimley",
  "codigo_postal": 42154,
  "telefono": "215-284-0836",
  "correo": "kbrimley3@irs.gov",
  "fecha_registro": "06/04/2021",
  "recomendado": ""
}, {
  "nombre": "Nalani Lampitt",
  "codigo_postal": 41611,
  "telefono": "542-856-6055",
  "correo": "nlampitt4@storify.com",
  "fecha_registro": "27/11/2021",
  "recomendado": ""
}, {
  "nombre": "Kessia Petrolli",
  "codigo_postal": 35037,
  "telefono": "451-416-7917",
  "correo": "kpetrolli5@sphinn.com",
  "fecha_registro": "12/01/2021",
  "recomendado": "ObjectId('635b8067602e696cb5b897a6')"
}, {
  "nombre": "Dickie Sweed",
  "codigo_postal": 41417,
  "telefono": "590-359-9515",
  "correo": "dsweed6@newsvine.com",
  "fecha_registro": "05/10/2021",
  "recomendado": ""
}, {
  "nombre": "Jacynth Sizeland",
  "codigo_postal": 85531,
  "telefono": "356-396-0305",
  "correo": "jsizeland7@lulu.com",
  "fecha_registro": "30/07/2022",
  "recomendado": "ObjectId('635b8067602e696cb5b897ac')"
}, {
  "nombre": "Brinna Crooke",
  "codigo_postal": 19889,
  "telefono": "104-861-0069",
  "correo": "bcrooke8@apache.org",
  "fecha_registro": "26/04/2021",
  "recomendado": ""
}, {
  "nombre": "Gael Cline",
  "codigo_postal": 95985,
  "telefono": "802-897-3846",
  "correo": "gcline9@blogspot.com",
  "fecha_registro": "17/12/2021",
  "recomendado": ""
}, {
  "nombre": "Agathe Girdwood",
  "codigo_postal": 93745,
  "telefono": "657-350-5171",
  "correo": "agirdwooda@weibo.com",
  "fecha_registro": "27/11/2021",
  "recomendado": ""
}, {
  "nombre": "Karol Moulding",
  "codigo_postal": 38535,
  "telefono": "582-309-3752",
  "correo": "kmouldingb@cnet.com",
  "fecha_registro": "12/12/2022",
  "recomendado": ""
}, {
  "nombre": "Florence Rawsthorne",
  "codigo_postal": 78824,
  "telefono": "299-185-0132",
  "correo": "frawsthornec@cyberchimps.com",
  "fecha_registro": "29/07/2021",
  "recomendado": "ObjectId('635b8067602e696cb5b897af')"
}, {
  "nombre": "Reine McKernon",
  "codigo_postal": 56856,
  "telefono": "514-693-0840",
  "correo": "rmckernond@typepad.com",
  "fecha_registro": "05/10/2022",
  "recomendado": ""
}, {
  "nombre": "Marigold Sutherel",
  "codigo_postal": 73878,
  "telefono": "886-958-2095",
  "correo": "msutherele@facebook.com",
  "fecha_registro": "15/12/2022",
  "recomendado": "ObjectId('635b8067602e696cb5b897b3')"
}]
)

db.ventas.insertMany(
  [
    {
      num_venta: 0001,
      empleado: {
        nombre: 'Raul Gomez',
        id: 1
      },
      codigo_gafa: '635ad9aa602e696cb5b8978b',
      codigo_cliente: '635b8067602e696cb5b897a6'
    },
    {
      num_venta: 0002,
      empleado: {
        nombre: 'Silvia Grande',
        id: 2
      },
      codigo_gafa: '635ade07602e696cb5b8978c',
      codigo_cliente: '635b8067602e696cb5b897a7'
    },
    {
      num_venta: 0003,
      empleado: {
        nombre: 'Silvia Grande',
        id: 2
      },
      codigo_gafa: '635ade07602e696cb5b8978d',
      codigo_cliente: '635b8067602e696cb5b897a8'
    },
    {
      num_venta: 0004,
      empleado: {
        nombre: 'Tomas Feliz',
        id: 3
      },
      codigo_gafa: '635ade07602e696cb5b8978e',
      codigo_cliente: '635b8067602e696cb5b897a9'
    },
    {
       num_venta: 0005,
      empleado: {
        nombre: 'Tomas Feliz',
        id: 3
      },
      codigo_gafa: '635ade07602e696cb5b8978f',
      codigo_cliente: '635b8067602e696cb5b897a9'
    },
    {
       num_venta: 0006,
      empleado: {
        nombre: 'Tomas Feliz',
        id: 3
      },
      codigo_gafa: '635ade07602e696cb5b89791',
      codigo_cliente: '635b8067602e696cb5b897aa'
    },
    {
      num_venta: 0007,
      empleado: {
        nombre: 'Raul Gomez',
        id: 1
        },
      codigo_gafa: '635ade07602e696cb5b89793',
      codigo_cliente: '635b8067602e696cb5b897aa'
    },
    {
      num_venta: 0008,
        empleado: {
          nombre: 'Raul Gomez',
          id: 1
        },
      codigo_gafa: '635ade07602e696cb5b8978d',
      codigo_cliente: '635b8067602e696cb5b897a9'
    },
    {
        num_venta: 0009,
        empleado: {
          nombre: 'Raul Gomez',
          id: 1
        },
      codigo_gafa: '635ade07602e696cb5b89795',
      codigo_cliente: '635b8067602e696cb5b897ab'
    },
    {
      num_venta: 0010,
      empleado: {
        nombre: 'Silvia Grande',
        id: 2
      },
      codigo_gafa: '635ade07602e696cb5b89796',
      codigo_cliente: '635b8067602e696cb5b897b2'
    }
  ]
)

