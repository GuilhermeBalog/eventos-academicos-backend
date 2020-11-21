const express = require('express');
const router = express.Router();

const Eventos = require('../database')('evento')

// CREATES A NEW
router.post('/', async (req, res) => {
  const { edicao, fk_localizacao_id, nome, tema, valorinscricao } = req.body;
  try {
    const evento = await Eventos.insert({ edicao, fk_localizacao_id, nome, tema, valorinscricao }, '*');
    return res.status(201).json(evento);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {
  try {
    const eventos = await Eventos.select('*');
    return res.status(200).send(eventos);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  const { id } = req.params

  try {
    const evento = await Eventos.where('id', id).select('*').first();

    if (!evento) {
      return res.status(404).json({ erro: 'Evento não encontrado' })
    }
    return res.json(evento)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
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
