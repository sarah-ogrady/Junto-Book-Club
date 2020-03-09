import consumer from "./consumer";

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;
  consumer.subscriptions.create({ channel: "SwapChannel", id: id }, {
    received(data) {
      const target = document.getElementById('messages')
      target.insertAdjacentHTML('beforeend', data);
    }
  });
}
