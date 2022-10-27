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