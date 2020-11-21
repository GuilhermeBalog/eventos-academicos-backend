const express = require('express')

const routes = express.Router()

const LocalizacaoController = require('./controllers/LocalizacaoController');
const EventoController = require('./controllers/EventoController');
const PessoaController = require('./controllers/PessoaController');

routes.get('/', (req, res) => res.json({ message: 'Welcome to our API' }))

routes.use('/localizacoes', LocalizacaoController)
routes.use('/eventos', EventoController)
routes.use('/pessoas', PessoaController)

module.exports = routes
