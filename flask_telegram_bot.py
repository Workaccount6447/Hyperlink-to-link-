from flask import Flask
import logging
from aiogram import Bot, Dispatcher, types, executor

# Initialize Flask app
app = Flask(__name__)

# Initialize your bot
BOT_TOKEN = '7837884374:AAFnl7seuam5Y18oFRnUoUF2o3g-vFjlvqo'
bot = Bot(token=BOT_TOKEN)
dp = Dispatcher(bot)

@app.route('/')
def health_check():
    return 'Healthy', 200

# Start the bot polling in a separate thread
def start_bot():
    logging.info("Bot is starting...")
    executor.start_polling(dp, skip_updates=True)

if __name__ == '__main__':
    from threading import Thread
    # Start the bot in a separate thread
    bot_thread = Thread(target=start_bot)
    bot_thread.start()
    
    # Run the Flask app
    app.run(host='0.0.0.0', port=8000)  # Ensure this matches the health check port
