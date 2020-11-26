const express = require('express');
const router = express.Router();

const knex = require('../database')

// CREATES A NEW
router.post('/', async (req, res) => {
  const { nome, endereco, valor } = req.body;
  try {
    const localizacao = await knex('localizacao').insert({ nome, endereco, valor }, '*');
    return res.status(201).json(localizacao);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {
  try {
    const localizacoes = await knex.select('*').from('localizacao');
    return res.status(200).json(localizacoes);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  const { id } = req.params

  try {
    const localizacao = await knex.select('*').from('localizacao').where('id', id).first();

    if (!localizacao) {
      return res.status(404).json({ erro: 'Localização não encontrada' })
    }
    return res.json(localizacao)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// DELETES A FROM THE DATABASE
router.delete('/:id', async (req, res) => {
  const { id } = req.params

  try {

    await knex('localizacao').where('id', id).del();

    return res.json({ message: "A localização foi excluída" })

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// UPDATES A SINGLE IN THE DATABASE
router.put('/:id', async (req, res) => {
  const { id } = req.params
  try {
    const [localizacao] = await knex('localizacao')
      .where('id', id)
      .update(req.body, '*');

    return res.json(localizacao)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

module.exports = router;
