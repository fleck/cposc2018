import 'babel-polyfill'

const empty = s => { while(s.length) s.remove(0) }

const addAnswer = (newAnswer, select) => {
  const answer = document.createElement('option')

  answer.value = newAnswer.id
  answer.innerText = newAnswer.name
  select.add(answer)
}

const updateAnswers = async (e, answers) => {
  const response = await fetch(`/polls/${e.target.value}/answers.json`)
  const newAnswers = await response.json()

  empty(answers)

  newAnswers.forEach(newAnswer => addAnswer(newAnswer, answers))
}

document.addEventListener('DOMContentLoaded', () => {
  const polls = document.querySelector('#result_poll_id')
  const answers = document.querySelector('#result_answer_id')

  if (polls) polls.addEventListener('change', (e) => updateAnswers(e, answers))
})
