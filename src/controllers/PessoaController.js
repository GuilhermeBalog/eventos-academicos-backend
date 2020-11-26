const express = require('express');
const router = express.Router();

const knex = require('../database');

// CREATES A NEW
router.post('/', async (req, res) => {
  const { nome, idade, sexo } = req.body;
  try {
    const pessoa = await knex('pessoas').insert({ nome, idade, sexo }, '*');
    return res.status(201).json(pessoa);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {
  try {
    const pessoas = await knex.select('*').from('pessoas');
    return res.status(200).send(pessoas);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  const { id } = req.params

  try {
    const pessoa = await knex
      .select('*')
      .from('pessoas')
      .where('id', id)
      .first();

    if (!pessoa) {
      return res.status(404).json({ erro: 'Pessoa não encontrada' })
    }

    const eventos = await knex
      .select(['evento.*', 'pessoaparticipaevento.datacompra'])
      .from('pessoas')
      .join('pessoaparticipaevento', 'pessoas.id', 'fk_pessoas_id')
      .join('evento', 'evento.id', 'fk_evento_id')
      .where('pessoas.id', id)

    pessoa.eventos = eventos

    return res.json(pessoa)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// DELETES A FROM THE DATABASE
router.delete('/:id', async (req, res) => {
  const { id } = req.params

  try {
    await knex('pessoas').where('id', id).del();

    return res.json({ message: "A pessoa foi excluída" })

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// UPDATES A SINGLE IN THE DATABASE
router.put('/:id', async (req, res) => {
  const { id } = req.params

  try {
    const pessoa = await knex('pessoas').where('id', id).update(req.body, '*');

    return res.json(pessoa)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

module.exports = router;
