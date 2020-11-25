const express = require('express');
const router = express.Router();

const Eventos = require('../database')('evento')
const knex = require('../database')

// CREATES A NEW
router.post('/', async (req, res) => {
  const { edicao, fk_localizacao_id, nome, tema, valorinscricao } = req.body;

  const evento = await Eventos.insert({ edicao, fk_localizacao_id, nome, tema, valorinscricao }, '*');

  return res.status(201).json(evento);

});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {
  const eventos = await knex
    .select(['evento.*', 'localizacao.endereco'])
    .from('evento')
    .leftJoin('localizacao', 'evento.fk_localizacao_id', 'localizacao.id')

  return res.status(200).send(eventos);
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  const { id } = req.params

  const evento = await knex
    .select(['evento.*', 'localizacao.endereco'])
    .from('evento')
    .leftJoin('localizacao', 'localizacao.id', 'fk_localizacao_id')
    .where('evento.id', id)
    .first();

  if (!evento) {
    return res.status(404).json({ erro: 'Evento não encontrado' })
  }

  const pessoas = await knex
    .select(['pessoas.*', 'pessoaparticipaevento.datacompra'])
    .from('pessoas')
    .join('pessoaparticipaevento', 'pessoas.id', 'fk_pessoas_id')
    .join('evento', 'evento.id', 'fk_evento_id')
    .where('evento.id', id)

  evento.pessoas = pessoas

  return res.json(evento)
});

// DELETES A FROM THE DATABASE
router.delete('/:id', async (req, res) => {
  const { id } = req.params

  try {
    await Eventos.where('id', id).del();

    return res.json({ message: "O evento foi excluído" })

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// UPDATES A SINGLE IN THE DATABASE
router.put('/:id', async (req, res) => {
  const { id } = req.params
  try {
    const evento = await Eventos.where('id', id).update(req.body, '*');

    return res.json(evento)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

module.exports = router;
