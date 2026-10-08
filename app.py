from flask import Flask, render_template
from db import Database

app = Flask(__name__)
db = Database()


@app.route("/")
def index():
    return render_template("index.html", animales=db.get_all("zoo"))


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)