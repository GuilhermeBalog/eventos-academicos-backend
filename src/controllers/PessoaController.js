const express = require('express');
const router = express.Router();

const Pessoas = require('../database')('pessoas')

// CREATES A NEW
router.post('/', async (req, res) => {
  const { nome, idade, sexo } = req.body;
  try {
    const pessoa = await Pessoas.insert({ nome, idade, sexo }, '*');
    return res.status(201).json(pessoa);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// RETURNS ALL IN THE DATABASE
router.get('/', async (req, res) => {
  try {
    const pessoas = await Pessoas.select('*');
    return res.status(200).send(pessoas);

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// GETS A SINGLE FROM THE DATABASE
router.get('/:id', async (req, res) => {
  const { id } = req.params

  try {
    const pessoa = await Pessoas.where('id', id).select('*').first();

    if (!pessoa) {
      return res.status(404).json({ erro: 'Pessoa não encontrada' })
    }
    return res.json(pessoa)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// DELETES A FROM THE DATABASE
router.delete('/:id', async (req, res) => {
  const { id } = req.params

  try {
    await Pessoas.where('id', id).del();

    return res.json({ message: "A pessoa foi excluída" })

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

// UPDATES A SINGLE IN THE DATABASE
router.put('/:id', async (req, res) => {
  const { id } = req.params
  try {
    const pessoa = await Pessoas.where('id', id).update(req.body, '*');

    return res.json(pessoa)

  } catch (erro) {
    return res.status(500).json({ erro })
  }
});

module.exports = router;
