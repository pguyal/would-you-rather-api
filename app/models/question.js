const mongoose = require('mongoose')

const questionSchema = new mongoose.Schema({
  text: {
    type: String,
    required: true
  },
  option_one: {
    type: String,
    required: true
  },
  option_two: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Question', questionSchema)
