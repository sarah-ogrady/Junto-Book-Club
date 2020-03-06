import consumer from "./consumer";

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;
  console.log(id)
  consumer.subscriptions.create({ channel: "SwapChannel", id: id }, {
    received(data) {
      messagesContainer.insertAdjacentHTML('beforeend', data);
    }
  });
}
