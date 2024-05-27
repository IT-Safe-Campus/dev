document.addEventListener('DOMContentLoaded', function() {
  const chatbotContainer = document.getElementById('chatbot-container');
  const openChatButton = document.getElementById('open-chat-button');
  
  // Cacher le chatbot par défaut
  chatbotContainer.style.display = 'none';

  // Afficher le bouton d'ouverture du chatbot
  openChatButton.style.display = 'block';
});

async function callOpenAI(userMessage) {
  
  const creds_key = await fetch('creds.json');
  const apiKey = (await creds_key.json()).openai;

  const url = 'https://api.openai.com/v1/chat/completions';

  const response = await fetch(url, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${apiKey}`
    },
    body: JSON.stringify({
      model: 'gpt-3.5-turbo',
      messages: [
        { role: 'system', content: "Tu es un chatbot spécialisé en cybersécurité et tu ne réponds qu'à des questions de cybersécurité" },
        { role: 'user', content: userMessage }
      ]
    })
  });

  if (!response.ok) {
    throw new Error(`Error: ${response.statusText}`);
  }

  const data = await response.json();
  return data.choices[0].message.content;
}

function addMessage(role, text) {
  const messagesDiv = document.getElementById('messages');
  const messageDiv = document.createElement('div');
  messageDiv.classList.add(role);
  messageDiv.textContent = text;
  messagesDiv.appendChild(messageDiv);
  messagesDiv.scrollTop = messagesDiv.scrollHeight;
}

async function sendMessage() {
  const userInput = document.getElementById('user-input');
  const userMessage = userInput.value.trim();
  if (!userMessage) return;

  addMessage('user', userMessage);
  userInput.value = '';

  try {
    const botMessage = await callOpenAI(userMessage);
    addMessage('bot', botMessage);
  } catch (error) {
    addMessage('bot', 'Erreur : ' + error.message);
  }
}

function toggleChat() {
  const chatbotContainer = document.getElementById('chatbot-container');
  const openChatButton = document.getElementById('open-chat-button');
  chatbotContainer.style.display = chatbotContainer.style.display === 'none' ? 'flex' : 'none';
  openChatButton.style.display = chatbotContainer.style.display === 'none' ? 'block' : 'none';
}

