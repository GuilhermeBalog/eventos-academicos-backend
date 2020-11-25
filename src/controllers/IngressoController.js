const express = require('express');
const router = express.Router();

const Ingressos = require('../database')('pessoaparticipaevento')
const knex = require('../database');

// CREATES A NEW
router.post('/', async (req, res) => {
  const { fk_evento_id, fk_pessoas_id, datacompra } = req.body;

  try {
    const ingresso = await Ingressos.insert({
      fk_evento_id: parseInt(fk_evento_id),
      fk_pessoas_id: parseInt(fk_pessoas_id),
      datacompra
    }, '*');
    return res.status(201).json(ingresso);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {

  const ingressos = await knex
    .select(['pessoaparticipaevento.*', 'evento.*', 'pessoas.*'])
    .from('pessoas')
    .join('pessoaparticipaevento', 'pessoas.id', 'fk_pessoas_id')
    .join('evento', 'evento.id', 'fk_evento_id')

  return res.json(ingressos)
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  res.send()
});

// DELETES A FROM THE DATABASE
router.delete('/:id', async (req, res) => {
  res.send()
});

// UPDATES A SINGLE IN THE DATABASE
router.put('/:id', async (req, res) => {
  res.send()
});

module.exports = router;
